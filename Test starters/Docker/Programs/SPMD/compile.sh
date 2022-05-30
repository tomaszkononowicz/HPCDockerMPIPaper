#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc SPMD.c -o SPMD
mpicc SPMD.c -O2 -o SPMD_O2
mpicc SPMD.c -O3 -o SPMD_O3
mpicc SPMD.c -O3 -march=native -o SPMD_O3_native