#!/bin/bash

while read name email session status
do  
	emails/generate_rejection_email.sh "$name" "$session"
done < data/concatenated_list.txt
