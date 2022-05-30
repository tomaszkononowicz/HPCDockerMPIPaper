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
#include <sys/time.h>
#include <math.h>
#include <unistd.h>
#include <mpi.h> 

#define DATA_PACKET 0
#define RESULT 1
#define FINISH_COMPUTATIONS 2

long DATA_PACKET_PARTITION_COUNT=10240000;
long DATA_PACKET_COUNT=100;

void errorexit(const char *s) {
    printf("\n%s\n",s);	
    MPI_Finalize();
    exit(EXIT_FAILURE);	 	
}

double fcpu(double x) {
  return 1.0/(1.0+x);
}

void slavecpu(double *result,double start,double end,double step) {
    double sresult=0;
    long counter;
    long countermax;
    double arg;
    int threadid;

    countermax=((end-start)/step);

    arg=start;
    for(counter=0;counter<countermax;counter++) {
      sresult+=step*(fcpu(arg)+fcpu(arg+step))/2;
      arg+=step;
    }     
    *result=sresult;
}


// generates data packets (each data packet is 2 doubles long, data 
// packets do not overlap
void generatedata(double **data,long *packetcount,int datapacketmultiplier) {
  double start=1,end=100;
  double counter=start;
  long i;

  *packetcount=DATA_PACKET_COUNT*datapacketmultiplier;
  double step=(end-start)/(double)(*packetcount);
  // generate non-overlapping ranges so that MPI_Scatter can be used
  *data=(double *)malloc(sizeof(double)*(2*(*packetcount)));
  if (!(*data))
     errorexit("Not enough memory on host when generating data");
  for(i=0;i<(2*(*packetcount));) {
    (*data)[i++]=counter;
    counter+=step;
    (*data)[i++]=counter;
  }
}

typedef struct {
  long elemcount;
  double *elements;
  double *result;
} functionparameters_t;

void resultmergecpufunction(functionparameters_t *args) {
  double partialsum; // partial sum computed by each thread
  long i;

  partialsum=0;
  for(i=0;i<args->elemcount;i++)
    partialsum+=(args->elements)[i];
  *(args->result)+=partialsum;
  
}

int main(int argc,char **argv) {
 int datapacketmultiplier;
    int i;
    double step;
    double finalresult;
    unsigned char finish;
    long mypacketid;
    MPI_Status mpistatus;
    int myrank,processcount;
    int threadsupport;

    // Initialize MPI with support for multithreading
    MPI_Init_thread(&argc, &argv,MPI_THREAD_FUNNELED,&threadsupport); 
    if (threadsupport<MPI_THREAD_FUNNELED) {
      printf("\nThe implementation does not support MPI_THREAD_FUNNELED, it supports level %d\n",threadsupport);
      MPI_Finalize();
      return -1;
    }
    // find out my rank
    MPI_Comm_rank(MPI_COMM_WORLD, &myrank); 
    // find out the total number of processes
    MPI_Comm_size(MPI_COMM_WORLD, &processcount); 

    if (argc<2) 
      errorexit("\nSyntax: program <data packet multiplier>\n");
    datapacketmultiplier=atoi(argv[1]);

    double temporaryresult,result=0;
    functionparameters_t args;
    args.elements=&temporaryresult;
    args.elemcount=1;
    args.result=&result;

    double *data;
    long packetcount;

    if (!myrank) { // master process

    // generate input data
    generatedata(&data,&packetcount,datapacketmultiplier);
    // now the master process (with rank 0) will distribute data packets among slave processes
    // each slave process will spawn the requested number of threads


      long packetcounter=0;

      // distribute initial data packets to slave processes
      for(i=1;i<processcount;i++,packetcounter++)
	MPI_Send(&(data[2*packetcounter]),2,MPI_DOUBLE,i,DATA_PACKET,MPI_COMM_WORLD);

      // now wait for results and respond to incoming result messages
      // do it individually, in general data packets may take more or less time
      // to process (e.g. due to various CPUs on various nodes)

      do {
	MPI_Recv(&temporaryresult,1,MPI_DOUBLE,MPI_ANY_SOURCE,RESULT,MPI_COMM_WORLD,&mpistatus);
	// merge result
	resultmergecpufunction(&args);	 // result in variable result 

	// check who sent the result and send another data packet to that process
	MPI_Send(&(data[2*packetcounter]),2,MPI_DOUBLE,mpistatus.MPI_SOURCE,DATA_PACKET,MPI_COMM_WORLD);
	packetcounter++;

      } while (packetcounter<packetcount); // do it as long as there are data packets to send
      
      // now wait for pending results
      for(i=1;i<processcount;i++) {
	MPI_Recv(&temporaryresult,1,MPI_DOUBLE,MPI_ANY_SOURCE,RESULT,MPI_COMM_WORLD,&mpistatus);
	resultmergecpufunction(&args);	 // result in variable result 
      }

      // and send a termination message
      for(i=1;i<processcount;i++)
	MPI_Send(NULL,0,MPI_DOUBLE,i,FINISH_COMPUTATIONS,MPI_COMM_WORLD);
      // display the result
      printf("\nResult is %f\n",result);
    } else { // slave process
      double data[2];
      do {
	MPI_Probe(0,MPI_ANY_TAG,MPI_COMM_WORLD,&mpistatus);
	if (mpistatus.MPI_TAG==DATA_PACKET) {      
	  MPI_Recv(data,2,MPI_DOUBLE,0,DATA_PACKET,MPI_COMM_WORLD,&mpistatus);
	  // spawn computations in parallel using OpenMP
	  step=(data[1]-data[0])/(40*DATA_PACKET_PARTITION_COUNT); // equivalent to other implementations

	  slavecpu(&temporaryresult,data[0],data[1],step);
	  // send the result back
	  MPI_Send(&temporaryresult,1,MPI_DOUBLE,0,RESULT,MPI_COMM_WORLD);
	}
      } while (mpistatus.MPI_TAG!=FINISH_COMPUTATIONS);
    }

  MPI_Finalize(); 
  return 0; 
}
