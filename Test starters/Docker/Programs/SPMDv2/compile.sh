#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc SPMDv2.c -o SPMDv2
mpicc SPMDv2.c -O2 -o SPMDv2_O2
mpicc SPMDv2.c -O3 -o SPMDv2_O3
mpicc SPMDv2.c -O3 -march=native -o SPMDv2_O3_native
