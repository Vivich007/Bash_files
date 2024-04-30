#!/bin/bash

# Task 2: File Processing
# Calculate the sum of values in the second column of file 'data.txt'.

# Get the data.txt file content
#file_contents=$(cat /path/to/another_file.txt)
file_contents="data.txt"

# Put the content of the line in the file in a variable
line_number=2  # Specify the line number you want to read
specific_line=$(sed -n "${line_number}p" $file_contents)
echo "Line 2 of the file data.txt contains numbers: $specific_line"

# Initialize sum
sum=0

# Set IFS to comma to split the string
IFS=',' read -ra num_array <<< "$specific_line"

# Iterate over each number in the array and sum them up
for num in "${num_array[@]}"; do
    sum=$((sum + num))
done

# Output the sum
echo "Sum of the numbers: $sum"