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

**Test Case 3: Multiplication**
```
Enter first number:
7
Enter second number:
8

Enter operator (+, -, *, /):
*

Result: 7 * 8 = 56

================================
```

**Test Case 4: Invalid Operator**
```
Enter first number:
5
Enter second number:
3

Enter operator (+, -, *, /):
%

❌ Invalid operator! Please enter +, -, *, or /

================================
```

---

### 🔍 Key Concepts Used

| Concept | Explanation | Usage |
|---------|------------|-------|
| `#!/bin/bash` | Shebang - specifies bash interpreter | First line of script |
| `echo` | Print command | Display messages |
| `read var` | Input command | Take user input |
| `case...esac` | Conditional selection | Check operator value |
| `$((expr))` | Arithmetic expansion | Perform calculations |
| `[ condition ]` | Test command | Check conditions |
| `-eq` | Numeric equality test | Check b == 0 |
| `;;` | Case terminator | End each case block |

---

### 📚 Questions & Answers (Viva)

**Q1: What is the purpose of `#!/bin/bash`?**
- **A:** It's the shebang line that tells the system to execute this file using the bash shell interpreter.

**Q2: Why is `*` escaped as `\*` in the case statement?**
- **A:** Because `*` is a special character in bash (glob pattern). We escape it to use it literally.

**Q3: What does `$((a + b))` do?**
- **A:** It performs arithmetic expansion, calculating the sum of a and b.

**Q4: Why do we check `[ "$b" -eq 0 ]` before division?**
- **A:** To prevent division by zero error, which is mathematically undefined.

**Q5: What is the difference between `[ ]` and `[[ ]]`?**
- **A:** `[ ]` is POSIX portable; `[[ ]]` is bash-specific with more features.

**Q6: What does `;;` do in a case statement?**
- **A:** It terminates each case block and prevents fall-through to the next case.

**Q7: What operator would you use to check if a is greater than b?**
- **A:** `-gt` for numbers: `[ "$a" -gt "$b" ]`

**Q8: How would you add a modulo operator to this calculator?**
- **A:** Add a new case pattern:
```bash
%)
    result=$((a % b))
    echo "Result: $a % $b = $result"
    ;;
```

**Q9: Can this script handle decimal numbers?**
- **A:** No, bash performs integer arithmetic by default.

**Q10: What happens if the user presses Enter without entering an operator?**
- **A:** The `op` variable will be empty, and the default case `*)` will execute, showing "Invalid operator".

---

---

## EXPERIMENT 2: GREATEST OF THREE NUMBERS

### 🎯 Aim / Objective

To write a shell script that accepts three numbers from the user and determines and displays the greatest (maximum) number among them.

---

### 📋 Algorithm

1. **Input Phase:**
   - Display title/banner
   - Read first number and store in variable `a`
   - Read second number and store in variable `b`
   - Read third number and store in variable `c`

2. **Comparison Phase (Method 1 - Successive Comparison):**
   - Assume first number `a` is the greatest
   - Compare `b` with current greatest:
     - If `b > greatest`, update `greatest = b`
   - Compare `c` with current greatest:
     - If `c > greatest`, update `greatest = c`

3. **Output Phase:**
   - Display all three numbers
   - Display the greatest number

**Alternative Method (If-Elif-Else):**
```
if (a >= b AND a >= c)
    greatest = a
else if (b >= a AND b >= c)
    greatest = b
else
    greatest = c
```

**Flow Chart:**
```
START
  ↓
Read a, b, c
  ↓
greatest = a
  ↓
Is b > greatest? → YES → greatest = b
                 ↓ NO
Is c > greatest? → YES → greatest = c
                 ↓ NO
Display greatest
  ↓
END
```

---

### 💻 Program Code (Method 1)

```bash
#!/bin/bash
# ============================================================================
# Shell Script: Find Greatest Among Three Numbers
# Purpose: Compare three numbers and display the greatest one
# Author: [Student Name]
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
```

---

### 💻 Program Code (Method 2 - If-Elif-Else)

```bash
#!/bin/bash
# ============================================================================
# Shell Script: Find Greatest Among Three Numbers (If-Elif-Else)
# Purpose: Compare three numbers using nested conditions
# Author: [Student Name]
# Date: November 2025
# ============================================================================

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
================================
  GREATEST OF THREE NUMBERS
================================

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

**Test Case 3: Third Number is Greatest**
```
================================
  GREATEST OF THREE NUMBERS
================================

Enter first number:
10
Enter second number:
20
Enter third number:
100

Numbers entered: 10, 20, 100
Greatest number is: 100

================================
```

**Test Case 4: All Equal**
```
================================
  GREATEST OF THREE NUMBERS
================================

Enter first number:
42
Enter second number:
42
Enter third number:
42

Numbers entered: 42, 42, 42
Greatest number is: 42

================================
```

---

### 🔍 Key Concepts Used

| Concept | Explanation | Usage |
|---------|------------|-------|
| `read var` | Input command | Read three numbers |
| `if [ condition ]` | Conditional statement | Test comparison |
| `-gt` | Greater than operator | Compare numbers |
| `-ge` | Greater than or equal | Use in if-elif-else |
| `&&` | Logical AND operator | Check multiple conditions |
| `[ ]` | Test brackets | Enclose conditions |
| `fi` | End if statement | Close if block |
| Variable assignment | `var=value` | Store and update greatest |

---

### 📚 Questions & Answers (Viva)

**Q1: What is the difference between `-gt` and `-ge`?**
- **A:** `-gt` means "greater than" (strictly), while `-ge` means "greater than or equal to".

**Q2: Why do we have spaces inside the square brackets `[ ]`?**
- **A:** Bash requires spaces for proper parsing. `[ ]` is a command that needs proper spacing.

**Q3: What does `&&` do in bash?**
- **A:** It's a logical AND operator. Both conditions must be true for the overall expression to be true.

**Q4: Can we use `>` instead of `-gt`?**
- **A:** No, `>` is for file redirection and string comparison. Use `-gt` for numeric comparison.

**Q5: What is the advantage of Method 1 over Method 2?**
- **A:** Method 1 is easier to extend (for 4 or 5 numbers). Method 2 requires checking all combinations.

**Q6: How would you modify this script to find the smallest number?**
- **A:** Replace `-gt` with `-lt`:
```bash
if [ "$b" -lt "$smallest" ]; then
    smallest=$b
fi
```

**Q7: What happens if we enter negative numbers?**
- **A:** The script works correctly. Comparison operators work with negative numbers.

**Q8: How would you extend this for four numbers?**
- **A:** Add another input and comparison:
```bash
read d
if [ "$d" -gt "$greatest" ]; then
    greatest=$d
fi
```

**Q9: What is the difference between the two methods?**
- **A:** Method 1: Successive comparison. Method 2: Direct check with combined conditions.

**Q10: What would happen if a user enters non-numeric input?**
- **A:** The script would fail with an error or treat the string as 0 in comparisons.

---

### 🔧 Improvements/Extensions

**1. Input Validation:**
```bash
if ! [[ "$a" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter valid numbers"
    exit 1
fi
```

**2. Find Smallest as Well:**
```bash
smallest=$a
[ "$b" -lt "$smallest" ] && smallest=$b
[ "$c" -lt "$smallest" ] && smallest=$c
echo "Smallest: $smallest"
```

**3. Sort Three Numbers:**
```bash
# After finding greatest and smallest, find middle
middle=$(($a + $b + $c - greatest - smallest))
```

---

---

## 📋 General Questions on Shell Scripting

### Q1: What is a shell script?
**A:** A text file containing a series of bash commands executed sequentially by the shell interpreter.

### Q2: What must be the first line of a shell script?
**A:** The shebang line: `#!/bin/bash` which specifies the interpreter.

### Q3: How do you give execute permission to a script?
**A:** Using the command: `chmod +x scriptname.sh`

### Q4: What is the difference between `read` and direct assignment?
**A:** `read a` takes input from user. `a=5` directly assigns a value.

### Q5: What are special characters in bash?
**A:** `* ? [ ] { } ( ) | & ; ' " $ \` - characters with special meanings.

### Q6: How do you comment in a shell script?
**A:** Using `#` symbol: `# This is a comment`

### Q7: What is `$((expr))`?
**A:** Arithmetic expansion - performs integer arithmetic within the parentheses.

### Q8: What operators are used for string comparison?
**A:** `=` (equal), `!=` (not equal), `-z` (empty), `-n` (not empty)

### Q9: What is the difference between single and double quotes?
**A:** Single quotes `''` preserve literal values. Double quotes `""` allow variable expansion.

### Q10: How do you run a shell script?
**A:** Using `./scriptname.sh` (after giving execute permission)

---

## 📝 Observations and Conclusions

### Observations from Experiment 1 (Calculator):
1. The calculator correctly performs all four basic operations
2. Division by zero is properly handled with error message
3. Invalid operator input is caught and handled
4. The script provides user-friendly output with clear formatting
5. Case statements provide an efficient way to handle multiple choices

### Observations from Experiment 2 (Greatest of Three):
1. Both methods (successive comparison and if-elif-else) produce correct results
2. The script handles equal numbers correctly
3. Works with positive and negative numbers
4. Output clearly shows all three numbers and the result
5. Successive comparison is simpler to understand for beginners

### Key Learnings:
- ✅ Shell scripts automate repetitive tasks
- ✅ Case statements are useful for menu-driven programs
- ✅ If-else statements help in conditional logic
- ✅ Proper error handling makes scripts robust
- ✅ Comments and clear formatting aid understanding
- ✅ Comparison operators differ for numbers vs strings
- ✅ Arithmetic expansion uses `$(( ))` syntax

---

## ✍️ Student Signature

**Student Name:** ________________

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
