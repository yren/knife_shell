#!/bin/bash

listen_port=`$PWD/find_port.sh $1 | grep kubectl`
count=`$PWD/find_port.sh $1 | grep kubectl | wc -l`

if [ $count == 1 ]; then
    processid=`$PWD/find_port.sh $1 | grep kubectl | awk '{print $2}'`
    echo "kill occupy port=$1, processid=$processid"
    kill -9 $processid
else
    echo no port $1 find.
fi


