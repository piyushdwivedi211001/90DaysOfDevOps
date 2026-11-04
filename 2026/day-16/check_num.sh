#!/bin/bash

echo "Let's check number is positive, negative or zero"

read -p "Enter number: " num

if [ "$num" -gt 0 ]; then
    echo "Positive"

elif [ "$num" -lt 0 ]; then
    echo "Negative"

else
    echo "Zero"
fi
