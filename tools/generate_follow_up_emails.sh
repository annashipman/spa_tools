#!/bin/bash

IFS=$'\t'

while read name email session status
do  
    name=$(echo $name | sed 's/\([A-Z]\)/ \1/g')

    name=$(echo $name | sed 's/^ *//g')
    session=$(echo $session | sed 's/^ *//g')
    status=$(echo $status | sed 's/^ *//g')

    if [ "Reserve" = $status ]; then
        echo $name
        subject="Your SPA 2013 session proposal"
        emails/generate_no_longer_reserve.sh "$subject" "$email" "$name" "$session"
    fi
    echo " "
    echo "------cut here -------"
    echo " "
done < output/concatenated_list.txt > output/follow_up_emails.txt

