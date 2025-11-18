#!/bin/bash
# ============================================================================
# Shell Script: Find Greatest Among Three Numbers
# Purpose: Compare three numbers and display the greatest one
# Author: Student Name
# Date: November 2025
# ============================================================================

echo "================================"
echo "  GREATEST OF THREE NUMBERS"
echo "================================"
echo ""

# Step 1: Input three numbers
echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo "Enter third number:"
read c

echo ""

# Step 2: Assume a is greatest
greatest=$a

# Step 3: Compare with b
if [ "$b" -gt "$greatest" ]; then
    greatest=$b
fi

# Step 4: Compare with c
if [ "$c" -gt "$greatest" ]; then
    greatest=$c
fi

# Step 5: Print result
echo "Numbers entered: $a, $b, $c"
echo "Greatest number is: $greatest"
echo ""
echo "================================"
