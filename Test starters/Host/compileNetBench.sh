#!/bin/bash

mpicc ./NetBenchMpiSsend/NetBenchMpiSsend.c -o ./NetBenchMpiSsend/NetBenchMpiSsend
mpicc ./NetBenchMpiSsend/NetBenchMpiSsend.c -O2 -o ./NetBenchMpiSsend/NetBenchMpiSsend_O2
mpicc ./NetBenchMpiSsend/NetBenchMpiSsend.c -O3 -o ./NetBenchMpiSsend/NetBenchMpiSsend_O3
mpicc ./NetBenchMpiSsend/NetBenchMpiSsend.c -O3 -march=native -o ./NetBenchMpiSsend/NetBenchMpiSsend_O3_native

mpicc ./NetBenchNonBlocking/NetBenchNonBlocking.c -o ./NetBenchNonBlocking/NetBenchNonBlocking
mpicc ./NetBenchNonBlocking/NetBenchNonBlocking.c -O2 -o ./NetBenchNonBlocking/NetBenchNonBlocking_O2
mpicc ./NetBenchNonBlocking/NetBenchNonBlocking.c -O3 -o ./NetBenchNonBlocking/NetBenchNonBlocking_O3
mpicc ./NetBenchNonBlocking/NetBenchNonBlocking.c -O3 -march=native -o ./NetBenchNonBlocking/NetBenchNonBlocking_O3_native

mpicc ./NetBenchWithContention/NetBenchWithContention.c -o ./NetBenchWithContention/NetBenchWithContention
mpicc ./NetBenchWithContention/NetBenchWithContention.c -O2 -o ./NetBenchWithContention/NetBenchWithContention_O2
mpicc ./NetBenchWithContention/NetBenchWithContention.c -O3 -o ./NetBenchWithContention/NetBenchWithContention_O3
mpicc ./NetBenchWithContention/NetBenchWithContention.c -O3 -march=native -o ./NetBenchWithContention/NetBenchWithContention_O3_native

mpicc ./NetBenchWithContentionMpiSsend/NetBenchWithContentionMpiSsend.c -o ./NetBenchWithContentionMpiSsend/NetBenchWithContentionMpiSsend
mpicc ./NetBenchWithContentionMpiSsend/NetBenchWithContentionMpiSsend.c -O2 -o ./NetBenchWithContentionMpiSsend/NetBenchWithContentionMpiSsend_O2
mpicc ./NetBenchWithContentionMpiSsend/NetBenchWithContentionMpiSsend.c -O3 -o ./NetBenchWithContentionMpiSsend/NetBenchWithContentionMpiSsend_O3
mpicc ./NetBenchWithContentionMpiSsend/NetBenchWithContentionMpiSsend.c -O3 -march=native -o ./NetBenchWithContentionMpiSsend/NetBenchWithContentionMpiSsend_O3_native




