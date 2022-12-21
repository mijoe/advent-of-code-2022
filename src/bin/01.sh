#!/usr/bin/env bash

echo "Most calories"
cat src/inputs/01.txt | paste -sd+ | sed 's/++/\n/g' | sed 's/+*$//g' \
	| bc | sort -nr | head -n 1

echo "Total calories"
cat src/inputs/01.txt | grep '\S' | paste -sd+ | sed 's/+*$//g' | bc
