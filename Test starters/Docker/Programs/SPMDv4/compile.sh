#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc SPMDv4.c -o SPMDv4
mpicc SPMDv4.c -O2 -o SPMDv4_O2
mpicc SPMDv4.c -O3 -o SPMDv4_O3
mpicc SPMDv4.c -O3 -march=native -o SPMDv4_O3_native
