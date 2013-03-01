#!/bin/bash

# prune submissions

echo "Get rid of lines that say change"
awk '! /^change/ { print }' < data/allproposals.txt > data/list_without_change.txt