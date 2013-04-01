#!/bin/bash

IFS=$'\t'

while read name email session status
do
    
    status=$(echo $status | sed 's/^ *//g')
    if [ "Accepted" = $status ]; then
        echo $email
    fi
done < output/concatenated_list.txt | sort -u
