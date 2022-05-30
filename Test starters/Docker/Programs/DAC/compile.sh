#!/bin/sh

export PATH="/usr/local/bin:${PATH}"

mpicc DAC.c -o DAC
mpicc DAC.c -O2 -o DAC_O2
mpicc DAC.c -O3 -o DAC_O3
mpicc DAC.c -O3 -march=native -o DAC_O3_native