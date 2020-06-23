#!/bin/sh

javac Main.java
startTime=`date +%s%3N`
echo ---- $PPT_LANG Test start at $startTime
java Main
endTime=`date +%s%3N`
totalTime=$(($endTime-$startTime))
size=`stat -c %s Main.class | tr -d '\n'`
echo -e "\033[41;37m $PPT_LANG Test time: $totalTime ms, size: $size \033[0m"