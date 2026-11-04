#!/bin/bash

# Function to greet a person
greet() {
    echo "Hello, $1!"
}

# Function to add two numbers
add() {
    sum=$(( $1 + $2 ))
    echo "Sum: $sum"
}

# Calling both functions
greet "Piyush"
add 10 20
