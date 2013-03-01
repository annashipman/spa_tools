#!/bin/bash

# prune submissions

echo "Getting rid of lines that say change..."
awk '! /^change/ { print }' < data/allproposals.txt > data/list_without_change.txt

echo "Merging session name line with line containing the rest of the details..."
while read line
do
        read line2
        echo "$line	$line2"
done < data/list_without_change.txt > data/all_on_one_line.txt

echo "Printing session, presenter and status..."
awk -F $'\t' '{ print $1 " " $2 $6 }' < data/all_on_one_line.txt > data/relevant_details.txt

echo "Creating list of names..."
awk -F $'\t' '{ print $2 }' < data/all_on_one_line.txt | sort | uniq > data/names_only.txt

echo "Creating list of names and emails from users.txt"
awk -F $'\t' '{ print $2 "	" $3 }' < data/users.txt > data/names_and_emails.txt

echo "Getting email addresses of all presenters..."
while read line
do
	grep $line data/names_and_emails.txt

done < data/names_only.txt > data/only_relevant_names_and_emails.txt


echo "Tidying up..."
rm data/list_without_change.txt data/all_on_one_line.txt data/names_only.txt data/names_and_emails.txt
