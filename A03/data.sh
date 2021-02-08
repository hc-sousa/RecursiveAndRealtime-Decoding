#! /bin/bash
#!/usr/bin/env python3
ulimit -s 16384
if [ -e data.txt ]; then
  rm data.txt
fi

./realtime -t $1 $2 $3 > data.txt
python3 realtime.py
rm data.txt
