#!/bin/bash

IFS=$'\t'

while read name email status session rest
do
    status=$(echo $status | sed 's/^ *//g')
    if [ "Accepted" = $status ]; then
        echo $session
    fi
done < output/concatenated_list.txt
