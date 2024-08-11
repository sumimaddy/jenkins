#!/bin/bash

# Function to check if the input is a valid integer
is_valid_integer() {
    [[ "$1" =~ ^-?[0-9]+$ ]]
}

# Check if exactly two arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

num1="$1"
num2="$2"

# Validate the first number
if ! is_valid_integer "$num1"; then
    echo "Error: '$num1' is not a valid integer."
    exit 1
fi

# Validate the second number
if ! is_valid_integer "$num2"; then
    echo "Error: '$num2' is not a valid integer."
    exit 1
fi

# Perform the addition
sum=$((num1 + num2))

# Print the result
echo "The sum of $num1 and $num2 is $sum."
