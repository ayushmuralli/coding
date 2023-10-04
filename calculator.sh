#!/bin/bash

# Function to add two numbers
add() {
  echo "Result: $(($1 + $2))"
}

# Function to subtract two numbers
subtract() {
  echo "Result: $(($1 - $2))"
}

# Function to multiply two numbers
multiply() {
  echo "Result: $(($1 * $2))"
}

# Function to divide two numbers
divide() {
  if [ $2 -eq 0 ]; then
    echo "Error: Cannot divide by zero"
  else
    echo "Result: $(($1 / $2))"
  fi
}

# Main calculator loop
while true; do
  # Menu
  echo "Options:"
  echo "Enter 'add' for addition"
  echo "Enter 'subtract' for subtraction"
  echo "Enter 'multiply' for multiplication"
  echo "Enter 'divide' for division"
  echo "Enter 'quit' to end the program"

  # User input
  read -p "Enter your choice: " choice

  if [ "$choice" == "quit" ]; then
    break
  fi

  if [ "$choice" == "add" ] || [ "$choice" == "subtract" ] || [ "$choice" == "multiply" ] || [ "$choice" == "divide" ]; then
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    case $choice in
      add)
        add $num1 $num2
        ;;
      subtract)
        subtract $num1 $num2
        ;;
      multiply)
        multiply $num1 $num2
        ;;
      divide)
        divide $num1 $num2
        ;;
    esac

    # Ask the user if they want to perform another calculation
    read -p "Do you want to perform another calculation? (yes/no): " continue_calculation
    if [ "$continue_calculation" != "yes" ]; then
      break
    fi
  else
    echo "Invalid input"
  fi
done
