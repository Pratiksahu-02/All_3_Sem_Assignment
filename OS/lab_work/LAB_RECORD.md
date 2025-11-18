# LAB RECORD - Shell Scripts

**Course:** Operating Systems Lab  
**Semester:** 3  
**Date:** November 18, 2025  
**Student Name:** ________________  
**Roll Number:** ________________  
**Lab Batch:** ________________

---

## EXPERIMENT 1: BASIC CALCULATOR

### 🎯 Aim / Objective

To write a shell script that performs basic arithmetic operations (addition, subtraction, multiplication, and division) on two numbers provided by the user.

---

### 📋 Algorithm

1. **Input Phase:**
   - Display a user-friendly title/banner
   - Read first number from user and store in variable `a`
   - Read second number from user and store in variable `b`

2. **Display Menu:**
   - Show available operations: +, -, *, /

3. **Get Operation:**
   - Read the operator choice from user and store in variable `op`

4. **Process Using Case Statement:**
   - **If op = '+'**: Calculate `result = a + b` and display result
   - **If op = '-'**: Calculate `result = a - b` and display result
   - **If op = '*'**: Calculate `result = a * b` and display result
   - **If op = '/'**:
     - Check if `b == 0`
     - If yes: Display "Error: Division by zero"
     - If no: Calculate `result = a / b` and display result
   - **Default**: Display "Invalid operator" error

5. **Output:** Display the calculated result or appropriate error message

**Flow Chart:**
```
START
  ↓
Display Menu
  ↓
Read a, b, op
  ↓
case op of:
├─ '+' → result = a + b
├─ '-' → result = a - b
├─ '*' → result = a * b
├─ '/' → (b==0) ? Error : result = a / b
└─ default → Invalid operator
  ↓
Display result
  ↓
END
```

---

### 💻 Program Code

```bash
#!/bin/bash
# ============================================================================
# Shell Script: Basic Calculator
# Purpose: Perform arithmetic operations on two numbers
# Author: [Student Name]
# Date: November 2025
# ============================================================================

# Display title
echo "================================"
echo "       SIMPLE CALCULATOR"
echo "================================"
echo ""

# Step 1: Take first number from user
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
```

**Script Location:** `../shell_scripts/scripts/calculator.sh`

---

### 📊 Sample Output

**Test Case 1: Addition**
```
================================
       SIMPLE CALCULATOR
================================

Enter first number:
15
Enter second number:
25

Select operation:
  (+)  Addition
  (-)  Subtraction
  (*)  Multiplication
  (/)  Division

Enter operator (+, -, *, /):
+

Result: 15 + 25 = 40

================================
```

**Test Case 2: Division by Zero**
```
Enter first number:
10
Enter second number:
0

Enter operator (+, -, *, /):
/

❌ Error: Division by zero is not allowed!

================================
```

---

### 📚 Viva Questions & Answers

**Q1: What is the purpose of `#!/bin/bash`?**
- **A:** Shebang line that tells the system to execute using bash interpreter.

**Q2: Why is `*` escaped as `\*` in case statement?**
- **A:** Because `*` is a special character in bash (glob pattern). We escape it to use it literally.

**Q3: What does `$((a + b))` do?**
- **A:** Performs arithmetic expansion, calculating the sum of a and b.

**Q4: Why check `[ "$b" -eq 0 ]` before division?**
- **A:** To prevent division by zero error, which is mathematically undefined.

**Q5: What is the difference between `[ ]` and `[[ ]]`?**
- **A:** `[ ]` is POSIX portable; `[[ ]]` is bash-specific with more features.

**Q6: What does `;;` do in a case statement?**
- **A:** Terminates each case block and prevents fall-through to next case.

**Q7: What operator to check if a is greater than b?**
- **A:** `-gt` for numbers: `[ "$a" -gt "$b" ]`

**Q8: How to add modulo operator?**
- **A:** Add case pattern:
```bash
%)
    result=$((a % b))
    echo "Result: $a % $b = $result"
    ;;
```

**Q9: Can this script handle decimal numbers?**
- **A:** No, bash performs integer arithmetic by default.

**Q10: What if user presses Enter without operator?**
- **A:** Variable `op` will be empty, default case `*)` executes showing "Invalid operator".

---

---

## EXPERIMENT 2: GREATEST OF THREE NUMBERS

### 🎯 Aim / Objective

To write a shell script that accepts three numbers from the user and determines and displays the greatest (maximum) number among them.

---

### 📋 Algorithm

**Method 1 (Successive Comparison):**
```
START
  Read a, b, c
  greatest = a
  If b > greatest:  greatest = b
  If c > greatest:  greatest = c
  Display greatest
END
```

**Method 2 (If-Elif-Else):**
```
If (a >= b AND a >= c): greatest = a
Else If (b >= a AND b >= c): greatest = b
Else: greatest = c
```

---

### 💻 Program Code (Method 1)

```bash
#!/bin/bash
# Shell Script: Find Greatest Among Three Numbers

echo "================================"
echo "  GREATEST OF THREE NUMBERS"
echo "================================"
echo ""

# Input three numbers
echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo "Enter third number:"
read c

echo ""

# Assume a is greatest
greatest=$a

# Compare with b
if [ "$b" -gt "$greatest" ]; then
    greatest=$b
fi

# Compare with c
if [ "$c" -gt "$greatest" ]; then
    greatest=$c
fi

# Print result
echo "Numbers entered: $a, $b, $c"
echo "Greatest number is: $greatest"
echo ""
echo "================================"
```

**Script Location:** `../shell_scripts/scripts/greatest3.sh`

---

### 💻 Program Code (Method 2 - If-Elif-Else)

```bash
#!/bin/bash
# Shell Script: Find Greatest Among Three Numbers

echo "================================"
echo "  GREATEST OF THREE NUMBERS"
echo "================================"
echo ""

echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo "Enter third number:"
read c

echo ""

# Compare using if-elif-else
if [ "$a" -ge "$b" ] && [ "$a" -ge "$c" ]; then
    echo "Numbers entered: $a, $b, $c"
    echo "Greatest number is: $a"
elif [ "$b" -ge "$a" ] && [ "$b" -ge "$c" ]; then
    echo "Numbers entered: $a, $b, $c"
    echo "Greatest number is: $b"
else
    echo "Numbers entered: $a, $b, $c"
    echo "Greatest number is: $c"
fi

echo ""
echo "================================"
```

---

### 📊 Sample Output

**Test Case 1: First Number is Greatest**
```
================================
  GREATEST OF THREE NUMBERS
================================

Enter first number:
50
Enter second number:
30
Enter third number:
20

Numbers entered: 50, 30, 20
Greatest number is: 50

================================
```

**Test Case 2: Second Number is Greatest**
```
Enter first number:
25
Enter second number:
45
Enter third number:
15

Numbers entered: 25, 45, 15
Greatest number is: 45

================================
```

---

### 📚 Viva Questions & Answers

**Q1: Difference between `-gt` and `-ge`?**
- **A:** `-gt` is "greater than" (strictly), `-ge` is "greater than or equal to".

**Q2: Why spaces inside square brackets `[ ]`?**
- **A:** Bash requires spaces for proper parsing. `[ ]` is a command needing proper spacing.

**Q3: What does `&&` do in bash?**
- **A:** Logical AND operator. Both conditions must be true for expression to be true.

**Q4: Can we use `>` instead of `-gt`?**
- **A:** No, `>` is for file redirection. Use `-gt` for numeric comparison.

**Q5: Advantage of Method 1 over Method 2?**
- **A:** Method 1 is easier to extend (for 4 or 5 numbers). Method 2 requires checking all combinations.

**Q6: How to find the smallest number?**
- **A:** Replace `-gt` with `-lt`:
```bash
if [ "$b" -lt "$smallest" ]; then
    smallest=$b
fi
```

**Q7: Works with negative numbers?**
- **A:** Yes, comparison operators work correctly with negative numbers.

**Q8: How to extend for four numbers?**
- **A:** Add another input and comparison:
```bash
read d
if [ "$d" -gt "$greatest" ]; then
    greatest=$d
fi
```

**Q9: Difference between the two methods?**
- **A:** Method 1: Successive comparison. Method 2: Direct check with combined conditions.

**Q10: If user enters non-numeric input?**
- **A:** Script fails with error or treats string as 0 in comparisons.

---

---

## 📝 General Questions on Shell Scripting

**Q1: What is a shell script?**
- A text file with bash commands executed sequentially by shell interpreter.

**Q2: Must-have first line of shell script?**
- Shebang line: `#!/bin/bash`

**Q3: How to give execute permission?**
- Using: `chmod +x scriptname.sh`

**Q4: Difference between `read` and assignment?**
- `read a` takes input from user. `a=5` directly assigns value.

**Q5: How to comment in shell script?**
- Using `#` symbol: `# This is a comment`

**Q6: What is `$((expr))`?**
- Arithmetic expansion - performs integer arithmetic.

**Q7: How to run shell script?**
- Using `./scriptname.sh` (after giving execute permission)

**Q8: What does `fi` do?**
- Closes the `if` statement block.

**Q9: What does `esac` do?**
- Closes the `case` statement block.

**Q10: How to debug a shell script?**
- Using `bash -x script.sh` to see execution step by step.

---

## 🧪 Observations and Conclusions

### From Experiment 1 (Calculator):
- ✓ Correctly performs all four basic operations
- ✓ Division by zero properly handled with error message
- ✓ Invalid operator input caught and handled
- ✓ User-friendly output with clear formatting
- ✓ Case statements efficiently handle multiple choices

### From Experiment 2 (Greatest of Three):
- ✓ Both methods produce correct results
- ✓ Handles equal numbers correctly
- ✓ Works with positive and negative numbers
- ✓ Output clearly shows all three numbers
- ✓ Successive comparison simpler to understand

### Key Learnings:
- ✅ Shell scripts automate repetitive tasks
- ✅ Case statements useful for menu-driven programs
- ✅ If-else statements help in conditional logic
- ✅ Proper error handling makes scripts robust
- ✅ Comments and clear formatting aid understanding
- ✅ Comparison operators differ for numbers vs strings
- ✅ Arithmetic expansion uses `$(( ))` syntax

---

## ✍️ Student Signature

**Student Name:** ________________

**Roll Number:** ________________

**Date:** ________________

**Signature:** ________________

---

## ✍️ Teacher/Lab Instructor Remarks

________________________________________________________________________________

________________________________________________________________________________

________________________________________________________________________________

**Teacher Name:** ________________

**Signature:** ________________

**Date:** ________________

---

**Lab Record Completed:** November 18, 2025
