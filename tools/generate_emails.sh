#!/bin/bash

IFS=$'\t'

while read name email session status
do  
	if [ " Accepted" = $status ]; then
		subject="SPA 2013 session accepted"
		emails/generate_acceptance_email.sh "$subject" "$email" "$name" "$session"
	elif [ " Reserve" = $status ]; then
		subject="SPA 2013 session on reserve list"
		emails/generate_reserve_email.sh "$subject" "$email" "$name" "$session"
	elif [ " Rejected" = $status ]; then
		subject="SPA 2013 session rejected"
		emails/generate_rejection_email.sh "$subject" "$email" "$name" "$session"
	fi
	echo " "
	echo "------cut here -------"
	echo " "
done < output/concatenated_list.txt > output/emails.txt

