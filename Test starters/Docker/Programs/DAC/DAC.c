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

#define DEBUG 1
#define NUMBER_OF_RECTANGLES 500000000000

int proccount;

typedef struct {
  double *elements;
  int elemcount;
} t_datapacket;


double fcpu(double x) {
  return 1.0/(1.0+x);
}

void errorexit(const char *s) {
    printf("\n%s\n",s);	
    MPI_Finalize();
    exit(EXIT_FAILURE);	 	
}

void freedata(t_datapacket *data) {
  free(data->elements);
  free(data);
}

t_datapacket *allocateinitializedata(double *vals,int valcount) {
  // an algorithm specific function that allocates and initializes the result to the given value

  t_datapacket *res=(t_datapacket *)malloc(sizeof(t_datapacket));
  if (!res) errorexit("Not enough memory.");

  res->elements=(double *)malloc(valcount*sizeof(double));
  if (!res->elements) errorexit("Not enough memory.");

  for(int i=0;i<valcount;i++)
    res->elements[i]=vals[i];
  res->elemcount=valcount;

  return res;
}

t_datapacket *generateinputdata(int argc,char **argv) {
  // here define the initial range to be integrated using command line arguments

  double range[2];

  range[0]=atof(argv[1]);
  range[1]=atof(argv[2]);
  return allocateinitializedata(range,2);
}

void computationslocal(t_datapacket *inputdata,t_datapacket **result) {
  // implement a specific algorithm - in this case numerical integration of the given range

  // assuming 2 elements in the input
#ifdef DEBUG
  if (inputdata->elemcount!=2)
    errorexit("Number of input elements incorrect");

#endif  



  double current=inputdata->elements[0];
  double end=inputdata->elements[1];
  double step=proccount*(end-current)/NUMBER_OF_RECTANGLES;

  double sum=0;
  for(;current<end;current+=step)
    sum+=fcpu(current)*step;

  // allocate and store result
  *result=allocateinitializedata(&sum,1);
}

void merge(t_datapacket *inputsubresults,int inputsubresultscount,t_datapacket **result) {
  // algorithm specific
  int i;
  double sum=0;

  for(i=0;i<inputsubresultscount;i++) {
#ifdef DEBUG
    if (inputsubresults[i].elemcount!=1)
      errorexit("Number of elements in subresults different from 1");
#endif
    sum+=inputsubresults[i].elements[0];
  }

  // and allocate and store result
  *result=allocateinitializedata(&sum,1);
}

void partition(t_datapacket *inputdata,t_datapacket **outputdata,int *outputdatacount) {
  // algorithm specific
  *outputdatacount=2;

  t_datapacket *data=(t_datapacket *)malloc(2*sizeof(t_datapacket));
  if (!data) errorexit("Not enough memory.");

  data[0].elements=(double *)malloc(2*sizeof(double));
  if (!(data[0].elements)) errorexit("Not enough memory.");
  data[0].elemcount=2;
  data[1].elements=(double *)malloc(2*sizeof(double));
  if (!(data[1].elements)) errorexit("Not enough memory.");
  data[1].elemcount=2;

  // now set values i.e. partition the input range into 2 subranges
#ifdef DEBUG
  if (inputdata->elemcount!=2)
    errorexit("Number of elements in subresults different from 2");
#endif
  data[0].elements[0]=inputdata->elements[0];
  data[0].elements[1]=(inputdata->elements[0]+inputdata->elements[1])/2;
  data[1].elements[0]=data[0].elements[1];
  data[1].elements[1]=inputdata->elements[1];

  *outputdata=data;
}

int main(int argc,char **argv) {

  int i;
  t_datapacket *inputdatapacket,*outputdatapacket;
  t_datapacket *outputdatapackets;
  int outputdatapacketscount;
  int myrank;

  MPI_Init(&argc,&argv);

  // check command line parameters
  if (argc<3)
    errorexit("\nSyntax: dac <startofrange> <endofrange>");

  MPI_Comm_rank(MPI_COMM_WORLD,&myrank);
  MPI_Comm_size(MPI_COMM_WORLD,&proccount);

  if (((proccount-1)&proccount)!=0)
    errorexit("\nThe number of processes must be a power of 2.\n");

  // now generate input for the root process
  if (!myrank)
    inputdatapacket=generateinputdata(argc,argv);
  else {
    // now create a data packet per each process so that it is used when communicating with other processes
    // it can be done by simply invoking the following
    double temp[2];
    temp[0]=0;
    temp[1]=0;
    inputdatapacket=allocateinitializedata(temp,2);
  }
  
  // partitioning sequence
  // communication should be in the following steps
  // 0
  // 0       4
  // 0   2   4   6
  // 0 1 2 3 4 5 6 7
  if (proccount>1) {

    if (!myrank) {
      partition(inputdatapacket,&outputdatapackets,&outputdatapacketscount);
          
      // free the current data packet
      freedata(inputdatapacket);
      
      // assuming 2 output data packets for this application
      // now the first data packet will be mine
      inputdatapacket=&(outputdatapackets[0]);
      // and send the other data packet to a following process
      MPI_Send(outputdatapackets[1].elements,2,MPI_DOUBLE,proccount/2,0,MPI_COMM_WORLD);
    }
    
    int alreadyreceived=0;    
    for(int currentskip=proccount/2;currentskip>=1;currentskip/=2) {
      if (!(myrank%currentskip)) { // then I am involved in the given step
	
	// receive if possible
	if ((myrank-currentskip>=0) && (!alreadyreceived)) {
	  MPI_Recv(inputdatapacket->elements,2,MPI_DOUBLE,myrank-currentskip,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
	  alreadyreceived=1;
	}
	
	// now if it is not the last step then the input range needs to be partitioned
	if (currentskip/2>=1) { // partition 
	  partition(inputdatapacket,&outputdatapackets,&outputdatapacketscount);

	  // free the current data packet
	  freedata(inputdatapacket);
	  // assuming 2 output data packets for this application
	  // now the first data packet will be mine
	  inputdatapacket=&(outputdatapackets[0]);
	  // and send the other data packet to a following process
	  
	  MPI_Send(outputdatapackets[1].elements,2,MPI_DOUBLE,myrank+currentskip/2,0,MPI_COMM_WORLD);	

	}
      }
    }
    
  }
  // now each process should have its range in inputdatapacket
  // process the input data packet

  computationslocal(inputdatapacket,&outputdatapacket);

  if (proccount>1) {    
    // now results are in outputdatapacket (each outputdatapacket holds one double)
    // it is necessary to merge results
    // structure of computations is as follows (MPI ranks):
    // 0 1 2 3  4 5 6 7    each process i.e. two successive processes
    // 0    2      4 6 every 2nd process
    // 0            4 every fourth process etc.
    // 0
    
    if (myrank%2) // then send the data to process with rank myrank-1     
      MPI_Send(outputdatapacket->elements,1,MPI_DOUBLE,myrank-1,0,MPI_COMM_WORLD);
    
    for(int currentskip=2;currentskip<=proccount;currentskip*=2) {
      if (!(myrank%currentskip)) { // then I (process) am involved in the given step
	
	// processes that partitioned before will now merge 
	// these processes have outputdatapackets spaces 
	// so it is possible to receive to those spaces
	outputdatapackets[0].elemcount=1;
	outputdatapackets[1].elemcount=1;
	outputdatapackets[0].elements[0]=outputdatapacket->elements[0]; // copy my result
	
	MPI_Recv(outputdatapackets[1].elements,1,MPI_DOUBLE,myrank+currentskip/2,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);

	// free the previous data packet
	freedata(outputdatapacket);
	// now merge data
	merge(outputdatapackets,2,&outputdatapacket);
	// result is now in outputdatapacket again
	// and send to an upper process if it is not the last iteration
	if (currentskip*2<=proccount) { // if not the last iteration
	  if (myrank%(currentskip*2)) // then I should send the data to process with rank myrank-currentskip
	    MPI_Send(outputdatapacket->elements,1,MPI_DOUBLE,myrank-currentskip,0,MPI_COMM_WORLD);	 
	}
      }
    }
  }
  
  // now process 0 has the result
  if (!myrank) // display the final result
    printf("\nResult is %f\n",outputdatapacket->elements[0]);

  MPI_Finalize();
}
