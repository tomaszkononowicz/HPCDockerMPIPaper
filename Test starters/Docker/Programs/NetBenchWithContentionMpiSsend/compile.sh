#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc NetBenchWithContentionMpiSsend.c -o NetBenchWithContentionMpiSsend
mpicc NetBenchWithContentionMpiSsend.c -O2 -o NetBenchWithContentionMpiSsend_O2
mpicc NetBenchWithContentionMpiSsend.c -O3 -o NetBenchWithContentionMpiSsend_O3
mpicc NetBenchWithContentionMpiSsend.c -O3 -march=native -o NetBenchWithContentionMpiSsend_O3_native