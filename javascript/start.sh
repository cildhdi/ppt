#!/bin/sh

startTime=`date +%s%3N`
echo ---- $PPT_LANG Test start at $startTime
node main.js
endTime=`date +%s%3N`
totalTime=$(($endTime-$startTime))
echo -e "\033[41;37m $PPT_LANG Test time: $totalTime ms \033[0m"