#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc NetBenchWithContention.c -o NetBenchWithContention
mpicc NetBenchWithContention.c -O2 -o NetBenchWithContention_O2
mpicc NetBenchWithContention.c -O3 -o NetBenchWithContention_O3
mpicc NetBenchWithContention.c -O3 -march=native -o NetBenchWithContention_O3_native