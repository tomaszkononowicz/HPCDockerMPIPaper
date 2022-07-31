#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc NetBenchMpiSsend.c -o NetBenchMpiSsend
mpicc NetBenchMpiSsend.c -O2 -o NetBenchMpiSsend_O2
mpicc NetBenchMpiSsend.c -O3 -o NetBenchMpiSsend_O3
mpicc NetBenchMpiSsend.c -O3 -march=native -o NetBenchMpiSsend_O3_native