#!/usr/bin/env bash

echo "Most calories"
cat src/inputs/01.txt | paste -sd+ | sed 's/++/\n/g' | sed 's/+*$//g' \
	| bc | sort -nr | head -n 1

echo "Top 3 calories"
cat src/inputs/01.txt | paste -sd+ | sed 's/++/\n/g' | sed 's/+*$//g' \
	| bc | sort -nr | head -n 3 | paste -sd+ | bc
