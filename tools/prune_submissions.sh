#!/bin/bash

# prune submissions

echo "Getting rid of lines that say change..."
awk '! /^change/ { print }' < data/allproposals.txt > data/list_without_change.txt

echo "Merging session name line with line containing the rest of the details..."
while read line
do
        read line2
        echo "$line $line2"
done < data/list_without_change.txt > data/all_on_one_line.txt
