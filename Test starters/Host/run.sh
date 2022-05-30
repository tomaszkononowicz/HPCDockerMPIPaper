#!/bin/bash

echo "01"
ssh des01.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des01.sh >> V9_Docker_SPMDv3_des01_1.txt 2>> V9_Docker_SPMDv3_des01_1.txt &'
echo "02"
ssh des02.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des02.sh >> V9_Docker_SPMDv3_des02_1.txt 2>> V9_Docker_SPMDv3_des02_1.txt &'
echo "03"
ssh des03.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des03.sh >> V9_Docker_SPMDv3_des03_1.txt 2>> V9_Docker_SPMDv3_des03_1.txt &'
echo "04"
ssh des04.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des04.sh >> V9_Docker_SPMDv3_des04_1.txt 2>> V9_Docker_SPMDv3_des04_1.txt &'
echo "06"
ssh des06.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des06.sh >> V9_Docker_SPMDv3_des06_1.txt 2>> V9_Docker_SPMDv3_des06_1.txt &'
echo "07"
ssh des07.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des07.sh >> V9_Docker_SPMDv3_des07_1.txt 2>> V9_Docker_SPMDv3_des07_1.txt &'
echo "08"
ssh des08.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des08.sh >> V9_Docker_SPMDv3_des08_1.txt 2>> V9_Docker_SPMDv3_des08_1.txt &'
echo "09"
ssh des09.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des09.sh >> V9_Docker_SPMDv3_des09_1.txt 2>> V9_Docker_SPMDv3_des09_1.txt &'
echo "10"
ssh des10.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des10.sh >> V9_Docker_SPMDv3_des10_1.txt 2>> V9_Docker_SPMDv3_des10_1.txt &'
echo "11"
ssh des11.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des11.sh >> V9_Docker_SPMDv3_des11_1.txt 2>> V9_Docker_SPMDv3_des11_1.txt &'
echo "12"
ssh des12.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des12.sh >> V9_Docker_SPMDv3_des12_1.txt 2>> V9_Docker_SPMDv3_des12_1.txt &'
echo "13"
ssh des13.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des13.sh >> V9_Docker_SPMDv3_des13_1.txt 2>> V9_Docker_SPMDv3_des13_1.txt &'
echo "14"
ssh des14.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des14.sh >> V9_Docker_SPMDv3_des14_1.txt 2>> V9_Docker_SPMDv3_des14_1.txt &'
echo "15"
ssh des15.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des15.sh >> V9_Docker_SPMDv3_des15_1.txt 2>> V9_Docker_SPMDv3_des15_1.txt &'
echo "16"
ssh des16.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des16.sh >> V9_Docker_SPMDv3_des16_1.txt 2>> V9_Docker_SPMDv3_des16_1.txt &'
echo "17"
ssh des17.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des17.sh >> V9_Docker_SPMDv3_des17_1.txt 2>> V9_Docker_SPMDv3_des17_1.txt &'
echo "18"
ssh des18.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests1_des18.sh >> V9_Docker_SPMDv3_des18_1.txt 2>> V9_Docker_SPMDv3_des18_1.txt &'


echo "01"
ssh des01.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests2_des01.sh >> V9_Host_SPMDv3_des01_2.txt 2>> V9_Host_SPMDv3_des01_2.txt &'
echo "03"
ssh des03.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests2_des03.sh >> V9_Host_SPMDv3_des03_2.txt 2>> V9_Host_SPMDv3_des03_2.txt &'
echo "07"
ssh des07.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests2_des07.sh >> V9_Host_SPMDv3_des07_2.txt 2>> V9_Host_SPMDv3_des07_2.txt &'
echo "09"
ssh des09.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests2_des09.sh >> V9_Host_SPMDv3_des09_2.txt 2>> V9_Host_SPMDv3_des09_2.txt &'
echo "11"
ssh des11.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests2_des11.sh >> V9_Host_SPMDv3_des11_2.txt 2>> V9_Host_SPMDv3_des11_2.txt &'
echo "13"
ssh des13.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests2_des13.sh >> V9_Host_SPMDv3_des13_2.txt 2>> V9_Host_SPMDv3_des13_2.txt &'
echo "15"
ssh des15.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests2_des15.sh >> V9_Host_SPMDv3_des15_2.txt 2>> V9_Host_SPMDv3_des15_2.txt &'
echo "17"
ssh des17.kask 'cd /home/student/160839/Publication/Programs/SPMDv3 && nohup ./tests2_des17.sh >> V9_Host_SPMDv3_des17_2.txt 2>> V9_Host_SPMDv3_des17_2.txt &'







echo "01"
ssh des01.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des01.sh >> V9_Host_SPMDv4_des01_1.txt 2>> V9_Host_SPMDv4_des01_1.txt &'
echo "02"
ssh des02.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des02.sh >> V9_Host_SPMDv4_des02_1.txt 2>> V9_Host_SPMDv4_des02_1.txt &'
echo "03"
ssh des03.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des03.sh >> V9_Host_SPMDv4_des03_1.txt 2>> V9_Host_SPMDv4_des03_1.txt &'
echo "04"
ssh des04.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des04.sh >> V9_Host_SPMDv4_des04_1.txt 2>> V9_Host_SPMDv4_des04_1.txt &'
echo "06"
ssh des06.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des06.sh >> V9_Host_SPMDv4_des06_1.txt 2>> V9_Host_SPMDv4_des06_1.txt &'
echo "07"
ssh des07.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des07.sh >> V9_Host_SPMDv4_des07_1.txt 2>> V9_Host_SPMDv4_des07_1.txt &'
echo "08"
ssh des08.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des08.sh >> V9_Host_SPMDv4_des08_1.txt 2>> V9_Host_SPMDv4_des08_1.txt &'
echo "09"
ssh des09.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des09.sh >> V9_Host_SPMDv4_des09_1.txt 2>> V9_Host_SPMDv4_des09_1.txt &'
echo "10"
ssh des10.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des10.sh >> V9_Host_SPMDv4_des10_1.txt 2>> V9_Host_SPMDv4_des10_1.txt &'
echo "11"
ssh des11.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des11.sh >> V9_Host_SPMDv4_des11_1.txt 2>> V9_Host_SPMDv4_des11_1.txt &'
echo "12"
ssh des12.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des12.sh >> V9_Host_SPMDv4_des12_1.txt 2>> V9_Host_SPMDv4_des12_1.txt &'
echo "13"
ssh des13.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des13.sh >> V9_Host_SPMDv4_des13_1.txt 2>> V9_Host_SPMDv4_des13_1.txt &'
echo "14"
ssh des14.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des14.sh >> V9_Host_SPMDv4_des14_1.txt 2>> V9_Host_SPMDv4_des14_1.txt &'
echo "15"
ssh des15.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des15.sh >> V9_Host_SPMDv4_des15_1.txt 2>> V9_Host_SPMDv4_des15_1.txt &'
echo "16"
ssh des16.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des16.sh >> V9_Host_SPMDv4_des16_1.txt 2>> V9_Host_SPMDv4_des16_1.txt &'
echo "17"
ssh des17.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des17.sh >> V9_Host_SPMDv4_des17_1.txt 2>> V9_Host_SPMDv4_des17_1.txt &'
echo "18"
ssh des18.kask 'cd /home/student/160839/Publication/Programs/SPMDv4 && nohup ./tests1_des18.sh >> V9_Host_SPMDv4_des18_1.txt 2>> V9_Host_SPMDv4_des18_1.txt &'




