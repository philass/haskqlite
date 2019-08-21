#!/bin/bash

# Script that connects
C1PORT=1234
C1IP=$(ipconfig getifaddr en0)
C2PORT=1235
CONNECTION=$(echo "$C2PORT $(ipconfig getifaddr en0)" | nc localhost 1234)
if [[ $CONNECTION == "TRUE" ]]
then
  echo "Connection was success"
else
  echo "Connection was a failure"
fi

nc localhost $C2PORT > db.txt

#things to do next
#while CONNECTION=$(echo "TRUE" | nc -l $C2PORT)
#do
#  pattern match on connection
#  put key, value in db
#  communicate success to connection
#done
#Spin up server
#Recieve original file (this may happen w out implementation)
#send changes to the file over the network

