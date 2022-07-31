#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc NetBenchNonBlocking.c -o NetBenchNonBlocking
mpicc NetBenchNonBlocking.c -O2 -o NetBenchNonBlocking_O2
mpicc NetBenchNonBlocking.c -O3 -o NetBenchNonBlocking_O3
mpicc NetBenchNonBlocking.c -O3 -march=native -o NetBenchNonBlocking_O3_native