#!/bin/bash

echo "01"
ssh des01.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des01.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des01.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des01.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "02"
ssh des02.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des02.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des02.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des02.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "03"
ssh des03.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des03.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des03.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des03.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "04"
ssh des04.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des04.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des04.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des04.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "06"
ssh des06.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des06.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des06.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des06.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "07"
ssh des07.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des07.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des07.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des07.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "08"
ssh des08.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des08.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des08.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des08.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "09"
ssh des09.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des09.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des09.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des09.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "10"
ssh des10.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des10.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des10.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des10.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "11"
ssh des11.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des11.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des11.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des11.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "12"
ssh des12.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des12.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des12.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des12.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "13"
ssh des13.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des13.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des13.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des13.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "14"
ssh des14.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des14.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des14.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des14.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "15"
ssh des15.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des15.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des15.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des15.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "16"
ssh des16.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des16.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des16.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des16.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "17"
ssh des17.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des17.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des17.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des17.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

echo "18"
ssh des18.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchMpiSsend /home/student/160839/PublikacjaV9/'
ssh des18.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchNonBlocking  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchNonBlocking && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchNonBlocking /home/student/160839/PublikacjaV9/'
ssh des18.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContention  && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContention && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContention /home/student/160839/PublikacjaV9/'
ssh des18.kask 'mkdir -p /home/student/160839/PublikacjaV9 && rm -rf /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && mkdir -p /home/student/160839/PublikacjaV9/NetBenchWithContentionMpiSsend && cp -rfp /macierz/home/s160839/PublikacjaV9/NetBenchWithContentionMpiSsend /home/student/160839/PublikacjaV9/'

