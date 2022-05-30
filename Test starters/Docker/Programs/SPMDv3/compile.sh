#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc SPMDv3.c -o SPMDv3
mpicc SPMDv3.c -O2 -o SPMDv3_O2
mpicc SPMDv3.c -O3 -o SPMDv3_O3
mpicc SPMDv3.c -O3 -march=native -o SPMDv3_O3_native
