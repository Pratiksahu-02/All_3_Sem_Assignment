#!/bin/bash
# ============================================================================
# Shell Script: Basic Calculator
# Purpose: Perform arithmetic operations on two numbers
# Author: Student Name
# Date: November 2025
# ============================================================================

# Step 1: Take first number from user
echo "================================"
echo "       SIMPLE CALCULATOR"
echo "================================"
echo ""
echo "Enter first number:"
read a

# Step 2: Take second number from user
echo "Enter second number:"
read b

# Step 3: Show menu of operations
echo ""
echo "Select operation:"
echo "  (+)  Addition"
echo "  (-)  Subtraction"
echo "  (*)  Multiplication"
echo "  (/)  Division"
echo ""
echo "Enter operator (+, -, *, /):"
read op

# Step 4: Use case to decide which operation to perform
case "$op" in
    +)
        # Addition
        result=$((a + b))
        echo ""
        echo "Result: $a + $b = $result"
        ;;
    -)
        # Subtraction
        result=$((a - b))
        echo ""
        echo "Result: $a - $b = $result"
        ;;
    \*)
        # Multiplication (escape * as it's a special character)
        result=$((a * b))
        echo ""
        echo "Result: $a * $b = $result"
        ;;
    /)
        # Division (check for divide by zero)
        if [ "$b" -eq 0 ]; then
            echo ""
            echo "❌ Error: Division by zero is not allowed!"
        else
            result=$((a / b))
            echo ""
            echo "Result: $a / $b = $result"
        fi
        ;;
    *)
        # If user enters wrong operator
        echo ""
        echo "❌ Invalid operator! Please enter +, -, *, or /"
        ;;
esac

echo ""
echo "================================"
