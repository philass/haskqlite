#!/bin/bash

#Script for starting the server


C1PORT=1234
while CONNECTION=$(echo "TRUE" | nc -l 1234)
do
  echo "Connection : $CONNECTION"
  C2PORT=$(echo $CONNECTION | awk '{print $1;}')
  C2IP=$(echo $CONNECTION | awk '{print $2;}')
  echo $C2PORT
  echo $C2IP
  # wait for the server to spin up 
  sleep 4
  nc $C2IP $C2PORT < database
  echo "File SENT!"
done


#things to do nezt
#send over original file
#send changes to file
