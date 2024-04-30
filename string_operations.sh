#!/bin/bash

# Task 1: String Manipulation

myVar="Welcome to the best of the best Bash Stash!"

# Change all letters to uppercase
echo ${myVar^^}

# Count the number of words in the sentence.
#word_count=$(wc -w <<< "$myVar")
#echo "Total number of words in the sentence: $word_count"
echo "Total number of words in the sentence:" $(wc -w <<< "$myVar")


# Extract the first word in the sentence.
first_word=$(echo "$myVar" | awk '{print $1}')
echo "The first word of the sentence: $first_word"

# Replace all occurrences of the word 'best' with 'coolest'
echo "$myVar" | sed 's/best/coolest/g'

