#!/bin/bash

# Task 3: Error Handling
# Implement error-handling mechanisms for different scenarios

# 1:Check if a required command-line argument is provided. If not, display an error message and exit with a non-zero status code.
if [ "$#" -eq 0 ]; then
    echo "Error: No command-line argument provided."
    echo "Sample usage: $0 <type a name>"
    exit 1
fi
name="$1"
echo "Hello, $name! Welcome to the Bash scripting world."


# 2: Attempt to read from a non-existent file. If the file does not exist, display an error message and exit gracefully.

# Check if the file exists

no_file="dater.txt"
if [ ! -e "$no_file" ]; then
    echo "Error: File '$no_file' does not exist."
    exit 1
fi

echo "The content of dater.txt is $no_file"