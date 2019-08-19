#!/bin/bash

# Script that connects
C1PORT=1234
C1IP=$(ipconfig getifaddr en0)
C2PORT=1236
CONNECTION=$(echo "$C2PORT $(ipconfig getifaddr en0)" | nc localhost 1234)
if [[ $CONNECTION == "TRUE" ]]
then
  echo "Connection was success"
else
  echo "Connection was a failure"
fi

