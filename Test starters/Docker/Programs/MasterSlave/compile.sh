#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc MasterSlave.c -o MasterSlave
mpicc MasterSlave.c -O2 -o MasterSlave_O2
mpicc MasterSlave.c -O3 -o MasterSlave_O3
mpicc MasterSlave.c -O3 -march=native -o MasterSlave_O3_native