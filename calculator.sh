#!/bin/bash

# The following code allows users to do arithmetic operations outputs its results
# The code only supports the following symbols:  +, -, * and /

read -p "Press :q at any time to quit " q                                 # gives user option to quit by entering ':q'
while true; do                                               
   read q
   [ $q == ':q' ] && break
done

read -p "Please enter a number: " num1                                    # Lets user choose 1st number to begin the operation

while true; do
  
  read -p "Please select an operation (+, -, * or /): " op                # Allows user to unde
  
  if [ $op == '+' ]; then                                                 # Addition option for the calculator
    read -p "Please enter a number: " num2
    total = 'expr $num1 + $num2'
    echo The total so far is $total
  
  elif [ $op == '-' ]; then                                               # Substraction option for the calculator
    read -p "Please enter a number: " num2
    total = 'expr $num1 - $num2'
    echo The total so far is $total
  
  elif [ $op == '*' ]; then                                               # Multiplication option for the calculator
    read -p "Please enter a number: " num2
    total = 'expr $num1 * $num2'
    echo The total so far is $total
  
  elif [ $op == '/' ]; then                                               # Division option for the calculator
    read -p "Please enter a number: " num2
    total = 'expr $num1 / $num2'
    echo The total so far is $total
  
  elif [ $op != '+' && $op != '-' && $op != '*' && $op != '/' ]; then     # Prompts user for valid operation if invalid one is chosen
    read -p "An error has occured; please enter a valid operation: " op
  
  else [ $op == ':q']; then                                               # If ':q' is entered, the loop exits and the script closes
    echo The calculator will now exit
    break
  
  fi

done
