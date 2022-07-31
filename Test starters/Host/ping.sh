#!/bin/bash

echo "01"
ssh des01.kask 'ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "02"
ssh des02.kask 'ping -c 10 des01.kask && ping -c 10 des03.kask && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "03"
ssh des03.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "04"
ssh des05.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "06"
ssh des06.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "07"
ssh des07.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "08"
ssh des08.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "09"
ssh des09.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "10"
ssh des10.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "11"
ssh des11.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "12"
ssh des12.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "13"
ssh des13.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "14"
ssh des14.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "15"
ssh des15.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des16.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "16"
ssh des16.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des17.kask && ping -c 10 des18.kask'
echo "17"
ssh des17.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des18.kask'
echo "18"
ssh des18.kask 'ping -c 10 des01.kask && ping -c 10 des02.kask && ping -c 10 des03.kask  && ping -c 10 des05.kask && ping -c 10 des06.kask && ping -c 10 des07.kask && ping -c 10 des08.kask && ping -c 10 des09.kask && ping -c 10 des10.kask && ping -c 10 des11.kask && ping -c 10 des12.kask && ping -c 10 des13.kask && ping -c 10 des14.kask && ping -c 10 des15.kask && ping -c 10 des16.kask && ping -c 10 des17.kask'

