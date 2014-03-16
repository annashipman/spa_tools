#!/bin/bash

IFS=$'\t'

while read name email status session rest
do  
    name=$(echo $name | sed 's/^\([A-Z][a-z]\+\).*$/\1/g')
    session=$(echo $session | sed 's/^ *//g')
    status=$(echo $status | sed 's/^ *//g')

    if [ "Accepted" = $status ]; then
        subject="SPA 2014 session accepted"
        emails/generate_acceptance_email.sh "$subject" "$email" "$name" "$session"
    elif [ "Reserve" = $status ]; then
        subject="SPA 2014 session on reserve list"
        emails/generate_reserve_email.sh "$subject" "$email" "$name" "$session"
    elif [ "Rejected" = $status ]; then
        subject="Your session proposal for SPA 2014"
        emails/generate_rejection_email.sh "$subject" "$email" "$name" "$session"
    fi
    echo " "
    echo "------cut here -------"
    echo " "
done < output/concatenated_list.txt > output/emails.txt

