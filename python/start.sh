#!/bin/sh

startTime=`date +%s%3N`
echo ---- $PPT_LANG Test start at $startTime
python main.py
endTime=`date +%s%3N`
totalTime=$(($endTime-$startTime))
size=`stat -c %s main.py | tr -d '\n'`
echo -e "\033[41;37m $PPT_LANG Test time: $totalTime * 100 ms, size: $size \033[0m"