# Calculator Script - Detailed Documentation

## 📌 Script Information

| Property | Value |
|----------|-------|
| **Filename** | `calculator.sh` |
| **Purpose** | Perform basic arithmetic operations |
| **Difficulty** | Beginner |
| **Concepts Used** | case statement, arithmetic operations, conditional logic |

---

## 🎯 Aim

To write a shell script that takes two numbers and an operator from the user, performs the appropriate arithmetic operation, and displays the result.

---

## 📋 Algorithm (Step-by-Step)

### Flow Diagram Logic

```
START
  ↓
Input: First Number (a)
  ↓
Input: Second Number (b)
  ↓
Display Operator Menu
  ↓
Input: Operator (op)
  ↓
Check operator using CASE:
  ├─ If op = '+' → Calculate a + b
  ├─ If op = '-' → Calculate a - b
  ├─ If op = '*' → Calculate a * b
  ├─ If op = '/'
  │   ├─ If b = 0 → Print "Division by zero error"
  │   └─ Else → Calculate a / b
  └─ Default → Print "Invalid operator"
  ↓
Display Result
  ↓
END
```

### Detailed Steps

| Step | Description | Command/Logic |
|------|-------------|--------------|
| 1 | Display title banner | `echo "SIMPLE CALCULATOR"` |
| 2 | Prompt for first number | `echo "Enter first number:" && read a` |
| 3 | Prompt for second number | `echo "Enter second number:" && read b` |
| 4 | Display operator menu | Show 4 options: +, -, *, / |
| 5 | Read operator input | `echo "Enter operator:" && read op` |
| 6 | Use case statement | `case "$op" in` |
| 7a | If + → Addition | `result=$((a + b))` |
| 7b | If - → Subtraction | `result=$((a - b))` |
| 7c | If * → Multiplication | `result=$((a * b))` |
| 7d | If / → Division with zero check | Check if `b = 0`, else calculate |
| 7e | Else → Invalid operator | Print error message |
| 8 | Display result | `echo "Result: $a $op $b = $result"` |

---

## 💻 Complete Script with Comments

```bash
#!/bin/bash
# ============================================================================
# Shell Script: Basic Calculator
# Purpose: Perform arithmetic operations on two numbers
# ============================================================================

# Step 1: Display title
echo "================================"
echo "       SIMPLE CALCULATOR"
echo "================================"
echo ""

# Step 2: Take first number from user
echo "Enter first number:"
read a

# Step 3: Take second number from user
echo "Enter second number:"
read b

# Step 4: Show menu of operations
echo ""
echo "Select operation:"
echo "  (+)  Addition"
echo "  (-)  Subtraction"
echo "  (*)  Multiplication"
echo "  (/)  Division"
echo ""
echo "Enter operator (+, -, *, /):"
read op

# Step 5: Use case to decide which operation to perform
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

## 🔄 How It Works (Explanation)

### Variable Usage

```bash
a              # Stores first number
b              # Stores second number
op             # Stores the operator (+, -, *, /)
result         # Stores the calculation result
```

### Key Concepts

| Concept | Explanation |
|---------|-------------|
| `read a` | Takes input from user and stores in variable `a` |
| `$((a + b))` | Arithmetic expansion - performs calculation |
| `case "$op" in` | Matches value of `op` with multiple patterns |
| `\*)` | Escaped asterisk (needs backslash in case pattern) |
| `[ "$b" -eq 0 ]` | Checks if b equals 0 (for division) |
| `;;` | Ends each case block |
| `*)` | Default case if no other pattern matches |

---

## 📊 Sample Input & Output

### Example 1: Addition
```
================================
       SIMPLE CALCULATOR
================================

Enter first number:
10
Enter second number:
20

Select operation:
  (+)  Addition
  (-)  Subtraction
  (*)  Multiplication
  (/)  Division

Enter operator (+, -, *, /):
+

Result: 10 + 20 = 30

================================
```

### Example 2: Division by Zero
```
Enter first number:
15
Enter second number:
0

Select operation:
  (+)  Addition
  (-)  Subtraction
  (*)  Multiplication
  (/)  Division

Enter operator (+, -, *, /):
/

❌ Error: Division by zero is not allowed!

================================
```

### Example 3: Invalid Operator
```
Enter first number:
5
Enter second number:
3

Select operation:
  (+)  Addition
  (-)  Subtraction
  (*)  Multiplication
  (/)  Division

Enter operator (+, -, *, /):
%

❌ Invalid operator! Please enter +, -, *, or /

================================
```

---

## ✅ Important Points to Remember

| Point | Explanation |
|-------|------------|
| **Shebang** | `#!/bin/bash` must be the first line |
| **Execute Permission** | Run `chmod +x calculator.sh` before execution |
| **Arithmetic Syntax** | Use `$(( ))` for arithmetic operations in bash |
| **Escaped Characters** | In case statements, `*` must be escaped as `\*` |
| **Integer Division** | Bash performs integer division (10/3 = 3, not 3.33) |
| **Error Handling** | Division by zero is checked using `[ "$b" -eq 0 ]` |

---

## 🎓 Viva Questions & Answers

### Q1: What is the purpose of `#!/bin/bash`?
**A:** It's called a shebang. It tells the system to execute this file using the bash shell interpreter.

### Q2: Why do we need to write `\*` instead of just `*` in the case statement?
**A:** Because `*` is a special character in bash used for filename globbing (wildcard). We escape it with `\` to use it as a literal asterisk.

### Q3: What does `$((a + b))` do?
**A:** It performs arithmetic expansion. It calculates the sum of a and b and returns the result.

### Q4: What is the difference between `read a` and `a=5`?
**A:** `read a` takes input from the user, while `a=5` directly assigns the value 5 to the variable.

### Q5: Why do we check `[ "$b" -eq 0 ]` before division?
**A:** To prevent division by zero error. Mathematical division by zero is undefined and causes an error.

### Q6: What does `;;` mean in a case statement?
**A:** It marks the end of a case block and prevents "fall-through" to the next case.

### Q7: What happens if the user enters an invalid operator?
**A:** The default case `*)` is executed, which prints an error message.

### Q8: Can this calculator handle decimal numbers?
**A:** No, because bash performs integer arithmetic. Input like 10.5 would be truncated.

### Q9: How would you modify this to add more operators (like modulo %)?
**A:** Add another case pattern before the `*)` default case:
```bash
%)
    result=$((a % b))
    echo "Result: $a % $b = $result"
    ;;
```

### Q10: What is the difference between `[` and `[[` in bash?
**A:** `[` is the POSIX shell test command, while `[[` is bash-specific and more powerful (supports regex, etc.). Both work here.

---

## 🔧 Modifications & Extensions

### 1. Add Modulo Operator
```bash
%)
    result=$((a % b))
    echo "Result: $a % $b = $result"
    ;;
```

### 2. Add Power Operator
```bash
^)
    result=$((a ** b))
    echo "Result: $a ^ $b = $result"
    ;;
```

### 3. Handle Decimal Division
```bash
/)
    if [ "$b" -eq 0 ]; then
        echo "❌ Error: Division by zero!"
    else
        result=$(echo "scale=2; $a / $b" | bc)
        echo "Result: $a / $b = $result"
    fi
    ;;
```

---

## 🚀 How to Run

```bash
# Step 1: Create the file
nano calculator.sh

# Step 2: Paste the script and save (Ctrl+X, then Y, then Enter)

# Step 3: Give execute permission
chmod +x calculator.sh

# Step 4: Run the script
./calculator.sh

# Step 5: Enter inputs when prompted
```

---

**Last Updated:** November 18, 2025  
**Difficulty Level:** ⭐ Beginner  
**Time to Understand:** 15-20 minutes
