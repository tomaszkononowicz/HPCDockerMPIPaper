/*
Copyright 2017, Paweł Czarnul pawelczarnul@pawelczarnul.com

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
contributors may be used to endorse or promote products derived from
this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

#define DATA 0

typedef struct {
  double value;
  double retaincoefficient; // assumed to be in the [0,1] range
} t_cell;

t_cell *data;
t_cell *datanext;

int processcount; // the total number of processes
int myrank; // rank of each MPI process

int X,Y,Z; // domain sizes in particular dimensions
int processcountx,processcounty,processcountz; // numbers of processes in particular dimensions

int stepcount=100; // the number of iterations of the main loop

int myblockx,myblocky,myblockz; // id of a block in particular dimensions 
int myblockxsize,myblockysize,myblockzsize; // particular sizes of blocks in particular dimensions
int myminx,mymaxx,myminy,mymaxy,myminz,mymaxz; // minimum and maximum indices for a block
// assigned to a process

void errorexit(const char *s) {
    printf("\n%s\n",s);	
    MPI_Finalize();
    exit(EXIT_FAILURE);	 	
}

t_cell *getcell(t_cell *data,int x,int y,int z) {
  int relativex,relativey,relativez; // relative coordinates of a cell within a block
  relativex=x-myminx+1;
  relativey=y-myminy+1;
  relativez=z-myminz+1;
  return data+(relativex+relativey*(2+myblockxsize)+relativez*(2+myblockxsize)*(2+myblockysize));
}

void updatecell(t_cell *datanext,t_cell *data,int x,int y,int z) { // updates the value of the given cell
  t_cell *currentcell=getcell(datanext,x,y,z);
  currentcell->value=(currentcell->value*currentcell->retaincoefficient+(getcell(data,x-1,y,z)->value+getcell(data,x+1,y,z)->value+getcell(data,x,y-1,z)->value+getcell(data,x,y+1,z)->value+getcell(data,x,y,z-1)->value+getcell(data,x,y,z+1)->value)*(1-currentcell->retaincoefficient)/6.0);
}

int celltorank(int x,int y,int z) { // returns the rank of a process
  // that computes the given cell
  int blockx,blocky,blockz;
  blockx=x/(X/processcountx);
  blocky=y/(Y/processcounty);
  blockz=z/(Z/processcountz);
  return (blockx+blocky*processcountx+blockz*processcountx*processcounty);
}

void optimizepartitioning(int X,int Y,int Z,int *x,int *y,int *z,int processcount) {
  // find good partitioning in 3 dimensions given a number of processes
  int a;
  int i,j,k;
  double min=3*processcount;
  double temp;

  for(i=1;i<=processcount;i++) {
    if ((processcount%i)==0) {
      a=processcount/i;
      for(j=1;j<=a;j++) {
	if ((a%j)==0) {
	  k=a/j;
	  if ((temp=(i/(double)X)+(j/(double)Y)+(k/(double)Z))<min) {
	    min=temp;
	    *x=i; *y=j; *z=k;
	  }
	}
      }
    }
  }
}

int main(int argc,char **argv) {
  int x,y,z; // coordinates of a currently analyzed cell
  int t; // current time step
  MPI_Datatype t_XYface,t_XZface,t_YZface; // data types representing data to be sent/received between processes
  int i,j;

  MPI_Init(&argc,&argv);

  if (argc<5)
    errorexit("\nSyntax: <X> <Y> <Z> <stepcount>\n X, Y, Z - sizes of the domain in cells\n stepcount - the number of time steps in the application\n");

  X=atoi(argv[1]);
  Y=atoi(argv[2]);
  Z=atoi(argv[3]);
  stepcount=atoi(argv[4]);

  // find out the total number of processes
  MPI_Comm_size(MPI_COMM_WORLD,&processcount); 
  // and my rank
  MPI_Comm_rank(MPI_COMM_WORLD,&myrank);

  // find out how many cuts in each direction should be performed
  optimizepartitioning(X,Y,Z,&processcountx,&processcounty,&processcountz,processcount);

  if (processcount!=(processcountx*processcounty*processcountz))
    errorexit("\nThe number of processes started and processcountx*processcounty*processcountz are different. Try again!\n");

  // now compute ids of my block in each dimension -- myblockx, myblocky and myblockz based on rank
  myblockz=myrank/(processcountx*processcounty);
  myblocky=(myrank-myblockz*processcountx*processcounty)/processcountx;
  myblockx=myrank-myblockz*processcountx*processcounty-myblocky*processcountx;
  myblockxsize=(X/processcountx); // we assume that these divice nicely
  myblockysize=(Y/processcounty);
  myblockzsize=(Z/processcountz);

  // find out coordinates of the subdomain this process is responsible for
  myminx=myblockxsize*myblockx;
  mymaxx=myminx+myblockxsize-1;
  myminy=myblockysize*myblocky;
  mymaxy=myminy+myblockysize-1;
  myminz=myblockzsize*myblockz;
  mymaxz=myminz+myblockzsize-1;

  t_cell *data0,*data1;

  // allocate space for a subdomain this process is resposinsible for -- only what is needed + 2 layers in each dimension for so-called "ghost cells"
  data0=(t_cell *)malloc(sizeof(t_cell)*(2+myblockxsize)*(2+myblockysize)*(2+myblockzsize));
  if (!data0)
    errorexit("\nNot enough memory.\n");
  data1=(t_cell *)malloc(sizeof(t_cell)*(2+myblockxsize)*(2+myblockysize)*(2+myblockzsize));
  if (!data1)
    errorexit("\nNot enough memory.\n");
  
  // initialize the data
  for(i=0;i<(2+myblockxsize)*(2+myblockysize)*(2+myblockzsize);i++) {
    data0[i].value=data1[i].value=2.0;
    data0[i].retaincoefficient=data1[i].retaincoefficient=1.0/7.0;
  }
  if (celltorank(0,0,0)==myrank) {
    t_cell *cell=getcell(data0,0,0,0);
    cell->value=100.0;
    cell->retaincoefficient=1;
    cell=getcell(data1,0,0,0);
    cell->value=100.0;
    cell->retaincoefficient=1;
  }

  int blockcount=2;
  int blocklengths[2]={1,1};
  MPI_Datatype blocktypes[2]={MPI_DOUBLE,MPI_DOUBLE};
  MPI_Datatype t_celltype;
  MPI_Aint offsets[2];
  offsets[0]=offsetof(t_cell,value);
  offsets[1]=offsetof(t_cell,retaincoefficient);
  MPI_Type_create_struct(blockcount,blocklengths,offsets,blocktypes,&t_celltype);
  MPI_Type_commit(&t_celltype);

  // create data types that each process would use for communication with neighbors
  // definition of a type corresponding to an YZ face of each subdomain

  int arrayofblocklengths[myblockysize*myblockzsize];
  int arrayofdisplacements[myblockysize*myblockzsize];
  int currentdisplacement=0;
  int counter=0;

  for(j=0;j<myblockzsize;j++) {
    for(i=0;i<myblockysize;i++) {
      arrayofblocklengths[counter]=1;
      arrayofdisplacements[counter++]=currentdisplacement;
      currentdisplacement+=myblockxsize+2;
    }
    currentdisplacement+=2*myblockxsize+4;
  }

  MPI_Type_indexed(myblockysize*myblockzsize,arrayofblocklengths,arrayofdisplacements,t_celltype,&t_YZface);
  MPI_Type_commit(&t_YZface);
  // definition of a type corresponding to an XY face of each subdomain
  MPI_Type_vector(myblockysize,myblockxsize,myblockxsize+2,t_celltype,&t_XYface);
  MPI_Type_commit(&t_XYface);
  // definition of a type corresponding to an XZ face of each subdomain
  MPI_Type_vector(myblockzsize,myblockxsize,(myblockxsize+2)*(myblockysize+2),t_celltype,&t_XZface);
  MPI_Type_commit(&t_XZface);

#ifdef DEBUG
  printf("\nminx=%d maxx=%d miny=%d maxy=%d minz=%d maxz=%d\n",myminx,mymaxx,myminy,mymaxy,myminz,mymaxz);
#endif  

  for(z=myminz;z<=mymaxz;z++)  
    for(y=myminy;y<=mymaxy;y++)
      for(x=myminx;x<=mymaxx;x++) {
	getcell(data0,x,y,z)->value=x+y+z;
	getcell(data1,x,y,z)->value=x+y+z;
      }

  data=data0; datanext=data1;

  // now perform the main simulation loop that iterates through time steps
  for(t=0;t<stepcount;t++) {
    // now exchange data with direct neighbors -- do this in stages
    
    // X direction
    // first receive data from left    
    if (myblockx%2) { // receive from left
      MPI_Recv(data+(myblockxsize+2)*(myblockysize+2)+(myblockxsize+2),1,t_YZface,celltorank(myminx-1,myminy,myminz),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
    } else { // send to right
      if (myblockx+1<processcountx) {
	MPI_Send(data+(myblockxsize+2)*(myblockysize+2)+(myblockxsize+2)+myblockxsize,1,t_YZface,celltorank(mymaxx+1,myminy,myminz),DATA,MPI_COMM_WORLD);
      }
    }

    // now repeat with even blockx
    if (!(myblockx%2)) { // receive from left
      if (myblockx>0)
	MPI_Recv(data+(myblockxsize+2)*(myblockysize+2)+(myblockxsize+2),1,t_YZface,celltorank(myminx-1,myminy,myminz),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
    } else { // send to right
      if (myblockx+1<processcountx) {
	MPI_Send(data+(myblockxsize+2)*(myblockysize+2)+(myblockxsize+2)+myblockxsize,1,t_YZface,celltorank(mymaxx+1,myminy,myminz),DATA,MPI_COMM_WORLD);
      }
    }
    
    // now send to the left
    if (myblockx%2) { // send to the left
      MPI_Send(data+(myblockxsize+2)*(myblockysize+2)+(myblockxsize+2)+1,1,t_YZface,celltorank(myminx-1,myminy,myminz),DATA,MPI_COMM_WORLD);
    } else { // receive from the right
      if (myblockx+1<processcountx) {
	MPI_Recv(data+(myblockxsize+2)*(myblockysize+2)+myblockxsize+2+myblockxsize+1,1,t_YZface,celltorank(mymaxx+1,myminy,myminz),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
      }
    }

    // now repeat with even blockx
    if (!(myblockx%2)) {
      if (myblockx>0)
	MPI_Send(data+(myblockxsize+2)*(myblockysize+2)+(myblockxsize+2)+1,1,t_YZface,celltorank(myminx-1,myminy,myminz),DATA,MPI_COMM_WORLD);
    } else {
      if (myblockx+1<processcountx) {
	MPI_Recv(data+(myblockxsize+2)*(myblockysize+2)+myblockxsize+2+myblockxsize+1,1,t_YZface,celltorank(mymaxx+1,myminy,myminz),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
      }
    }
  
    // Y direction
    if (myblocky%2) {
      MPI_Recv(data+(myblockxsize+2)*(myblockysize+2)+1,1,t_XZface,celltorank(myminx,myminy-1,myminz),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
    } else {
      if (myblocky+1<processcounty) {
	MPI_Send(data+1+(myblockysize)*(myblockxsize+2)+(myblockysize+2)*(myblockxsize+2),1,t_XZface,celltorank(myminx,mymaxy+1,myminz),DATA,MPI_COMM_WORLD);
      }
    }

    // even blocky
    if (!(myblocky%2)) {
      if (myblocky>0)
	MPI_Recv(data+(myblockxsize+2)*(myblockysize+2)+1,1,t_XZface,celltorank(myminx,myminy-1,myminz),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
    } else {
      if (myblocky+1<processcounty) {
	MPI_Send(data+1+(myblockysize)*(myblockxsize+2)+(myblockysize+2)*(myblockxsize+2),1,t_XZface,celltorank(myminx,mymaxy+1,myminz),DATA,MPI_COMM_WORLD);
      }
    }
  
    if (myblocky%2) {
      MPI_Send(data+(myblockxsize+2)*(myblockysize+2)+(myblockxsize+2)+1,1,t_XZface,celltorank(myminx,myminy-1,myminz),DATA,MPI_COMM_WORLD);
    } else {
      if (myblocky+1<processcounty) {
	MPI_Recv(data+(myblockysize+2)*(myblockxsize+2)+(myblockysize+1)*(myblockxsize+2)+1,1,t_XZface,celltorank(myminx,mymaxy+1,myminz),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
      }
    }
     
    // even myblocky
    if (!(myblocky%2)) {
      if (myblocky>0)
	MPI_Send(data+(myblockxsize+2)*(myblockysize+2)+(myblockxsize+2)+1,1,t_XZface,celltorank(myminx,myminy-1,myminz),DATA,MPI_COMM_WORLD);
    } else {
      if (myblocky+1<processcounty) {
	MPI_Recv(data+(myblockysize+2)*(myblockxsize+2)+(myblockysize+1)*(myblockxsize+2)+1,1,t_XZface,celltorank(myminx,mymaxy+1,myminz),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
      }
    }
    
    // Z direction    
    if (myblockz%2) {
      MPI_Recv(data+(myblockxsize+2+1),1,t_XYface,celltorank(myminx,myminy,myminz-1),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
    } else {
      if (myblockz+1<processcountz) {
	MPI_Send(data+((myblockxsize+2+1)+(myblockzsize)*(myblockxsize+2)*(myblockysize+2)),1,t_XYface,celltorank(myminx,myminy,mymaxz+1),DATA,MPI_COMM_WORLD);
      }
    }
    
    // even myblockz
    if (!(myblockz%2)) {
      if (myblockz>0)
	MPI_Recv(data+(myblockxsize+2+1),1,t_XYface,celltorank(myminx,myminy,myminz-1),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
    } else {
      if (myblockz+1<processcountz) {
	MPI_Send(data+((myblockxsize+2+1)+(myblockzsize)*(myblockxsize+2)*(myblockysize+2)),1,t_XYface,celltorank(myminx,myminy,mymaxz+1),DATA,MPI_COMM_WORLD);
      }
    }

    if (myblockz%2) {
      MPI_Send(data+(myblockxsize+2+1+(myblockxsize+2)*(myblockysize+2)),1,t_XYface,celltorank(myminx,myminy,myminz-1),DATA,MPI_COMM_WORLD);
    } else {
      if (myblockz+1<processcountz) {
	MPI_Recv(data+(myblockxsize+2+1+(myblockzsize+1)*(myblockxsize+2)*(myblockysize+2)),1,t_XYface,celltorank(myminx,myminy,mymaxz+1),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
      }
    }
    
    // even myblockz
    if (!(myblockz%2)) {
      if (myblockz>0)
	MPI_Send(data+(myblockxsize+2+1+(myblockxsize+2)*(myblockysize+2)),1,t_XYface,celltorank(myminx,myminy,myminz-1),DATA,MPI_COMM_WORLD);
    } else {
      if (myblockz+1<processcountz) {
	MPI_Recv(data+(myblockxsize+2+1+(myblockzsize+1)*(myblockxsize+2)*(myblockysize+2)),1,t_XYface,celltorank(myminx,myminy,mymaxz+1),DATA,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
      }
    }

    // update cells in your own domain
    for(z=myminz;z<=mymaxz;z++)
      for(y=myminy;y<=mymaxy;y++)
	for(x=myminx;x<=mymaxx;x++)
	  updatecell(datanext,data,x,y,z);

    // substitute pointers
    
    if (data==data0) {
      data=data1;
      datanext=data0;
    } else { 
      data=data0;
      datanext=data1;
    } 
  }

  if(celltorank(20,20,20)==myrank)
    printf("\nSimulation completed. Value of cell %d,%d,%d is %f\n",20,20,20,getcell(datanext,20,20,20)->value);
  if(celltorank(X-1,Y-1,Z-1)==myrank)
    printf("\nSimulation completed. Value of cell %d,%d,%d is %f\n",X-1,Y-1,Z-1,getcell(datanext,X-1,Y-1,Z-1)->value);
  free(data0);
  free(data1);
  MPI_Finalize();
  exit(0);
}
