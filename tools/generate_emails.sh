#!/bin/bash

IFS=$'\t'

while read name email session status
do  
	emails/generate_rejection_email.sh "$name" "$session"
done < output/concatenated_list.txt
