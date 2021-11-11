#!/bin/bash

for filename in tests/input_*; do      
    out_diff=`./hw1 7 ${filename} /dev/stdout | diff - ${filename/in/out}`
    if [ $? != 0 ]; then
        echo "There was a diffrence in $filename"
        echo "$out_diff"
    fi
done