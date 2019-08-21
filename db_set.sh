#!/bin/bash
echo "$1,$2" >> database
echo "local $1 $2" | nc localhost 1234

