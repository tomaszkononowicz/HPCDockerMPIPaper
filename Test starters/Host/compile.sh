#!/bin/bash

mpicc ./Programs/DAC/DAC.c -o ./Programs/DAC/DAC
mpicc ./Programs/DAC/DAC.c -O2 -o ./Programs/DAC/DAC_O2
mpicc ./Programs/DAC/DAC.c -O3 -o ./Programs/DAC/DAC_O3
mpicc ./Programs/DAC/DAC.c -O3 -march=native -o ./Programs/DAC/DAC_O3_native

mpicc ./Programs/SPMD/SPMD.c -o ./Programs/SPMD/SPMD
mpicc ./Programs/SPMD/SPMD.c -O2 -o ./Programs/SPMD/SPMD_O2
mpicc ./Programs/SPMD/SPMD.c -O3 -o ./Programs/SPMD/SPMD_O3
mpicc ./Programs/SPMD/SPMD.c -O3 -march=native -o ./Programs/SPMD/SPMD_O3_native

mpicc ./Programs/MasterSlave/MasterSlave.c -o ./Programs/MasterSlave/MasterSlave
mpicc ./Programs/MasterSlave/MasterSlave.c -O2 -o ./Programs/MasterSlave/MasterSlave_O2
mpicc ./Programs/MasterSlave/MasterSlave.c -O3 -o ./Programs/MasterSlave/MasterSlave_O3
mpicc ./Programs/MasterSlave/MasterSlave.c -O3 -march=native -o ./Programs/MasterSlave/MasterSlave_O3_native

mpicc ./Programs/SPMDv2/SPMDv2.c -o ./Programs/SPMDv2/SPMDv2
mpicc ./Programs/SPMDv2/SPMDv2.c -O2 -o ./Programs/SPMDv2/SPMDv2_O2
mpicc ./Programs/SPMDv2/SPMDv2.c -O3 -o ./Programs/SPMDv2/SPMDv2_O3
mpicc ./Programs/SPMDv2/SPMDv2.c -O3 -march=native -o ./Programs/SPMDv2/SPMDv2_O3_native

mpicc ./Programs/SPMDv3/SPMDv3.c -o ./Programs/SPMDv3/SPMDv3
mpicc ./Programs/SPMDv3/SPMDv3.c -O2 -o ./Programs/SPMDv3/SPMDv3_O2
mpicc ./Programs/SPMDv3/SPMDv3.c -O3 -o ./Programs/SPMDv3/SPMDv3_O3
mpicc ./Programs/SPMDv3/SPMDv3.c -O3 -march=native -o ./Programs/SPMDv3/SPMDv3_O3_native

mpicc ./Programs/SPMDv4/SPMDv4.c -o ./Programs/SPMDv4/SPMDv4
mpicc ./Programs/SPMDv4/SPMDv4.c -O2 -o ./Programs/SPMDv4/SPMDv4_O2
mpicc ./Programs/SPMDv4/SPMDv4.c -O3 -o ./Programs/SPMDv4/SPMDv4_O3
mpicc ./Programs/SPMDv4/SPMDv4.c -O3 -march=native -o ./Programs/SPMDv4/SPMDv4_O3_native


