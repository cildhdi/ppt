#!/bin/sh

startTime=`date +%s%3N`
echo ---- $PPT_LANG Test start at $startTime
dart main.dart
endTime=`date +%s%3N`
totalTime=$(($endTime-$startTime))
size=`stat -c %s main.dart | tr -d '\n'`
echo -e "\033[41;37m $PPT_LANG Test time: $totalTime ms, size: $size \033[0m"