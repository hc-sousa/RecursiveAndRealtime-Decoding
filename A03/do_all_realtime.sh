#! /bin/bash
#!/usr/bin/env python3
ulimit -s 16384
if [ -e data.txt ]; then
  rm data.txt
fi
printf "%s\t%s\t%s\t%s\t%s\n" "NSimbolos" "MaxPos" "encoded" "decoded" "==?" > realtimeResults.txt
for n in {3..1000}; do
    for i in {10..20}; do
        ./realtime -t $n $i 50 > data.txt
        python3 realtime.py >> realtimeResults.txt
        rm data.txt
    done
    echo "$n done"
done