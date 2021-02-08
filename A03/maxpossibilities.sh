#! /bin/bash
file="realtimeResults.txt"
awk '{print $1}' $file | grep [0-9] > nS.txt
awk '{print $2}' $file | grep [0-9] > maxPos.txt