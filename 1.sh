#!/bin/bash


 cd Paxos
 
 make clean   >/dev/null 
 make    2>&1    >/dev/null 
 
 cd bin

 rm -rf /Users/wuyiyang/out.txt
 
 ./Paxos_Test  > /Users/wuyiyang/out.txt
 

  yy=$(tail -n 2 /Users/wuyiyang/out.txt  | awk '{print $5}')
 
 
 echo ${yy:18:20}  

