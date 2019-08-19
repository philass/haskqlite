#!/bin/bash
C1PORT=1234
while CONNECTION=$(echo "TRUE" | nc -l 1234)
do
  echo "Connection : $CONNECTION"
  C2PORT=$(echo $CONNECTION | awk '{print $1;}')
  C2IP=$(echo $CONNECTION | awk '{print $2;}')
  echo $C2PORT
  echo $C2IP
  fswatch -o -l 5 test.txt | while read
  do
    echo "test.txt has been changed"
    CHANGE=$(tail -n 1 test.txt)
  done
done



