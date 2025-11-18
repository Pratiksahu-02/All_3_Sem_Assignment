# Greatest of Three Numbers - Detailed Documentation

## 📌 Script Information

| Property | Value |
|----------|-------|
| **Filename** | `greatest3.sh` |
| **Purpose** | Find the largest among three numbers |
| **Difficulty** | Beginner |
| **Concepts Used** | if-else statements, comparison operators, variables |

---

## 🎯 Aim

To write a shell script that accepts three numbers from the user and displays the greatest (maximum) number among them.

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
Input: Third Number (c)
  ↓
Assume greatest = a
  ↓
Is b > greatest?
├─ YES → greatest = b
└─ NO → greatest remains a
  ↓
Is c > greatest?
├─ YES → greatest = c
└─ NO → greatest remains same
  ↓
Display greatest
  ↓
END
```

### Detailed Steps

| Step | Description | Logic |
|------|-------------|-------|
| 1 | Display title | Print header |
| 2 | Input first number | `read a` |
| 3 | Input second number | `read b` |
| 4 | Input third number | `read c` |
| 5 | Assume first is greatest | `greatest=$a` |
| 6 | Compare with second | `if [ "$b" -gt "$greatest" ]` then `greatest=$b` |
| 7 | Compare with third | `if [ "$c" -gt "$greatest" ]` then `greatest=$c` |
| 8 | Display result | Print the greatest number |

---

## 💻 Method 1: Simple If-Else Approach

```bash
#!/bin/bash
# ============================================================================
# Shell Script: Find Greatest Among Three Numbers (Method 1)
# Purpose: Compare three numbers and display the greatest one
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

## 💻 Method 2: If-Elif-Else Approach

```bash
#!/bin/bash
# ============================================================================
# Shell Script: Find Greatest Among Three Numbers (Method 2)
# Purpose: Compare three numbers using if-elif-else
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

## 🔄 How It Works (Detailed Explanation)

### Method 1 Explanation

**Concept:** Successive comparison
- Assume the first number is greatest
- Compare with second, if smaller, update
- Compare with third, if smaller, update

**Advantages:**
- Easy to understand
- Works for any number of inputs
- Can extend easily to 4, 5, or more numbers

### Method 2 Explanation

**Concept:** Check all conditions at once
- Check if a is greater than both b and c
- Check if b is greater than both a and c
- Else c must be greatest

**Advantages:**
- Direct comparison
- Explicit logic
- Clearer what condition makes each number greatest

---

## 📊 Sample Input & Output

### Example 1: First Number is Greatest
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

### Example 2: Second Number is Greatest
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

### Example 3: Third Number is Greatest
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

### Example 4: All Numbers Equal
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

## 🔑 Key Bash Concepts

### Comparison Operators

| Operator | Meaning | Example |
|----------|---------|---------|
| `-gt` | Greater than | `[ 10 -gt 5 ]` → true |
| `-ge` | Greater than or equal | `[ 10 -ge 10 ]` → true |
| `-lt` | Less than | `[ 5 -lt 10 ]` → true |
| `-le` | Less than or equal | `[ 5 -le 10 ]` → true |
| `-eq` | Equal | `[ 5 -eq 5 ]` → true |
| `-ne` | Not equal | `[ 5 -ne 3 ]` → true |

### Logical Operators

| Operator | Meaning | Example |
|----------|---------|---------|
| `&&` | AND | `[ $a -gt 5 ] && [ $a -lt 10 ]` |
| `\|\|` | OR | `[ $a -eq 1 ] \|\| [ $a -eq 2 ]` |
| `!` | NOT | `[ ! "$a" -eq 0 ]` |

---

## ✅ Important Points

| Point | Explanation |
|-------|------------|
| **Spaces in [ ]** | Must have spaces: `[ $a -gt $b ]` NOT `[$a -gt $b]` |
| **Variable quotes** | Use `"$a"` to prevent word splitting |
| **-gt vs >** | Use `-gt` for numbers, not `>` (which is for strings) |
| **Double brackets [[]]** | Bash-specific, more flexible, allows `>` directly |
| **Assumed greatest** | Method 1 assumes first is greatest, then updates |

---

## 🎓 Viva Questions & Answers

### Q1: What is the difference between `-gt` and `-ge`?
**A:** `-gt` means "greater than" (strictly greater), while `-ge` means "greater than or equal to" (includes equality).

### Q2: Why do we use spaces inside square brackets `[ ]`?
**A:** Bash requires spaces for proper parsing. `[ ]` is actually a command, and it needs spaces to work correctly.

### Q3: Can we use `>` instead of `-gt` for number comparison?
**A:** No, `>` is for string comparison and file redirection. Use `-gt` for numerical comparison.

### Q4: What does `&&` do in bash?
**A:** It's a logical AND operator. Both conditions must be true for the overall expression to be true.

### Q5: What is the difference between the two methods?
**A:** 
- **Method 1:** Successive comparison - assumes first is greatest, then compares
- **Method 2:** Direct check - compares each number with all others

### Q6: How would you modify this to find the smallest number?
**A:** Replace `-gt` with `-lt`:
```bash
smallest=$a
if [ "$b" -lt "$smallest" ]; then
    smallest=$b
fi
# Continue similarly...
```

### Q7: What happens if we enter negative numbers?
**A:** The script works fine. Comparison operators work with negative numbers too.

### Q8: Can we use this script for 4 or 5 numbers?
**A:** Yes, just add more input statements and comparison blocks:
```bash
read d
if [ "$d" -gt "$greatest" ]; then
    greatest=$d
fi
```

### Q9: What is the purpose of `echo ""`?
**A:** It prints an empty line to add spacing and make output more readable.

### Q10: What's the difference between `[ ]` and `[[ ]]`?
**A:** 
- `[ ]` is POSIX portable
- `[[ ]]` is bash-specific, more features like regex support

---

## 🔧 Modifications & Extensions

### 1. Find Smallest Number
```bash
smallest=$a
if [ "$b" -lt "$smallest" ]; then smallest=$b; fi
if [ "$c" -lt "$smallest" ]; then smallest=$c; fi
echo "Smallest: $smallest"
```

### 2. Find Greatest of Four Numbers
```bash
echo "Enter fourth number:"
read d
if [ "$d" -gt "$greatest" ]; then
    greatest=$d
fi
```

### 3. Sort Three Numbers
```bash
# After finding greatest, find second and third
```

### 4. Input Validation (Check for Numbers)
```bash
if ! [[ "$a" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input! Please enter numbers only."
    exit 1
fi
```

---

## 📈 Time Complexity

| Operation | Complexity |
|-----------|-----------|
| Input reading | O(1) |
| Number of comparisons | O(n-1) where n=3 (fixed 2 comparisons) |
| Overall | O(1) |

---

## 🚀 How to Run

```bash
# Step 1: Create the file
nano greatest3.sh

# Step 2: Paste Method 1 or Method 2 script

# Step 3: Save the file (Ctrl+X, Y, Enter)

# Step 4: Give execute permission
chmod +x greatest3.sh

# Step 5: Run the script
./greatest3.sh

# Step 6: Enter three numbers when prompted
```

---

## 📋 Comparison Table: Method 1 vs Method 2

| Aspect | Method 1 | Method 2 |
|--------|----------|---------|
| **Approach** | Successive comparison | Direct check |
| **Lines of code** | More | Fewer |
| **Readability** | Very clear | Direct logic |
| **Extensibility** | Easy (add more ifs) | Need to check all combinations |
| **Performance** | Same | Same |
| **Best for** | Learning, flexible | Quick solution |

---

**Last Updated:** November 18, 2025  
**Difficulty Level:** ⭐ Beginner  
**Time to Understand:** 15-20 minutes
