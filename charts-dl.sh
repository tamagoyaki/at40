#!/bin/bash

if [ -n "$1" ]; then
    CNO=$1
fi

if [ -z $CNO ]; then
    echo Usage: charts-dl nnnnn
    exit
fi


URL=http://www.at40.com/top-40/chart/

w3m -dump $URL$CNO | awk '/^TOP 40 CHARTS/,/^AT40.com/'
