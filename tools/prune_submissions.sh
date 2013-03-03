#!/bin/bash

# prune submissions

echo "Getting rid of lines that say change..."
awk '! /^change/ { print }' < data/allproposals.txt > output/list_without_change.txt

echo "Merging session name line with line containing the rest of the details..."
while read line
do
        read line2
        echo "$line	$line2"
done < output/list_without_change.txt > output/all_on_one_line.txt

echo "Printing presenter, session and status in order of presenters..."
awk -F $'\t' '{ print $2 "	" $1 "	" $6 }' < output/all_on_one_line.txt | sort > output/relevant_details.txt

echo "Creating list of names and emails from users.txt"
awk -F $'\t' '{ print $2 "	" $3 }' < data/users.txt > output/names_and_emails.txt

echo "Concatenating email addresses with other data..."
while read name rest
do
	name_plus_email=$(grep -w $name output/names_and_emails.txt)
	echo "$name_plus_email "$'\t'" $rest"

done < output/relevant_details.txt > output/concatenated_list.txt


echo "Tidying up..."
rm output/list_without_change.txt output/all_on_one_line.txt output/names_and_emails.txt output/relevant_details.txt
