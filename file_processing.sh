#!/bin/bash

# Task 2: File Processing
# Calculate the sum of values in the second column of file 'data.txt'.

# Get the data.txt file content
#file_contents=$(cat /path/to/another_file.txt)
file_contents="data.txt"

# Put the content of the line in the file in a variable
line_number=2  # Specify the line number you want to read
line2=$(sed -n "${line_number}p" $file_contents)

# Initialize sum
sum=0

# Set IFS to comma to split the string
IFS=',' read -ra num_array <<< "$line2"

# Iterate over each number in the array and sum them up
for num in "${num_array[@]}"; do
    sum=$((sum + num))
done

# Output the sum
echo "Sum of the numbers in line 2 ($line2): $sum"



# Find the maximum value in the third column.

# Put the content of line 3 in the file in a variable
line_number=3  # Specify the line number you want to read
line3=$(sed -n "${line_number}p" $file_contents)
# Initialize max_value to the lowest possible integer value
max_value=-2147483648

# Split the comma-separated list into an array
IFS=',' read -ra values_array <<< "$line3"

# Iterate over each value in the array
for value in "${values_array[@]}"; do
    # Check if the current value is greater than the current max_value
    if [ "$value" -gt "$max_value" ]; then
        max_value="$value"
    fi
done
echo "Maximum value in line 3 ($line3) is $max_value"



# Determine the average value in the fourth column.

# Put the content of the line in the file in a variable
line_number=4  # Specify the line number you want to read
line4=$(sed -n "${line_number}p" $file_contents)

# Initialize variables
sum=0
count=0

# Split the list of numbers into individual values
IFS=',' read -r -a number_array <<< "$line4"

# Calculate the sum of numbers and count the total numbers
for number in "${number_array[@]}"; do
    sum=$((sum + number))
    ((count++))
done

# Calculate the average

average=$((sum/count))

# Output the average
echo "Average value of line 4 numbers ($line4): $average"