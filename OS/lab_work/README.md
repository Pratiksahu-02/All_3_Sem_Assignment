# OS Lab Work - Complete Guide

## 📂 Lab Work Structure

```
lab_work/
├── readme.md                    # Overview (this file)
├── Basic_linux_command.md       # Linux command reference
├── shell_pro_part1.md           # Shell programming theory
├── LAB_RECORD.md               # Lab submission template ⭐
└── shell_scripts/              # Related shell scripts project
    ├── scripts/                # Executable scripts
    │   ├── calculator.sh
    │   └── greatest3.sh
    └── docs/                   # Script documentation
        ├── 01-calculator.md
        └── 02-greatest3.md
```

---

## 📚 Contents Overview

### 1. Basic Linux Commands
**File:** `Basic_linux_command.md`

Comprehensive reference covering:
- System Information Commands (date, cal, who, tty, pwd)
- File & Directory Operations (ls, mkdir, rmdir, cd)
- File Content Operations (cat, cp, mv, rm)
- Text Utilities (echo, bc, wc)
- Practical exercises

**Use for:** Understanding basic terminal commands and file operations

---

### 2. Shell Programming Part 1
**File:** `shell_pro_part1.md`

Topics covered:
- Shell script basics
- Variables and data types
- Operators
- Control structures (if-else, case)
- Loops (for, while)
- Functions

**Use for:** Learning shell programming fundamentals

---

## 📋 Lab Record (Submission Template)

**File:** `LAB_RECORD.md` ⭐

Complete lab record with:
- Experiment 1: Basic Calculator
- Experiment 2: Greatest of Three Numbers
- 20+ Viva Questions with Answers
- Sample Outputs
- Observations and Conclusions
- Signature Pages for Student & Teacher

**Use this file to submit your lab work!**

---

## 📂 Shell Scripts Project

Working examples implementing shell concepts:
- `scripts/calculator.sh` - Practical example with case statements
- `scripts/greatest3.sh` - Practical example with if-else logic

**Detailed documentation in:** `../shell_scripts/docs/`

---

## 🎯 Learning Path

### Level 1: Basic Commands (Week 1)
1. Read `Basic_linux_command.md`
2. Practice each command in terminal
3. Complete the practice exercise section

### Level 2: Shell Programming (Week 2)
1. Read `shell_pro_part1.md`
2. Understand shell scripting concepts
3. Review shell programming theory

### Level 3: Practical Implementation (Week 3)
1. Study scripts in `../shell_scripts/`
2. Run `calculator.sh` and `greatest3.sh`
3. Read detailed documentation in `docs/` folder

### Level 4: Lab Record (Week 4)
1. Open `LAB_RECORD.md` in this folder
2. Fill in your name and roll number
3. Run the scripts from `shell_scripts/scripts/`
4. Complete sample outputs section
5. Answer all viva questions
6. Get teacher signature
7. Submit to instructor

---

## 🔗 Integration with Shell Scripts

| Concept from Commands | Used in Script | Example |
|----------------------|----------------|---------|
| `read` command | Input handling | `read a` in calculator.sh |
| `echo` command | Output display | Display results |
| `$((expr))` | Arithmetic | `$((a + b))` in calculator |
| Comparison operators | Conditionals | `-gt`, `-eq` in greatest3.sh |
| `case` statements | Menu-driven | Operation selection in calculator |
| Variable usage | Data storage | Storing numbers and results |

---

## 📋 Quick Reference

### Commands Used in Scripts

```bash
# Input/Output
echo "text"              # Display text
read variable           # Take user input

# Arithmetic
$((a + b))             # Addition
$((a - b))             # Subtraction
$((a * b))             # Multiplication
$((a / b))             # Division

# Conditionals
if [ condition ]       # If statement
case $var in           # Case statement
  pattern) code;;      # Case pattern

# Comparison
-gt                    # Greater than
-lt                    # Less than
-eq                    # Equal to
```

---

## ✅ Practical Exercises

After understanding the concepts, try:

### Exercise 1: File Operations
```bash
cd Desktop
mkdir my_project
cd my_project
touch file1.txt file2.txt
ls -la
```

### Exercise 2: Simple Script
```bash
#!/bin/bash
echo "Enter your name:"
read name
echo "Hello, $name!"
```

### Exercise 3: Conditional Logic
```bash
#!/bin/bash
echo "Enter a number:"
read num
if [ $num -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is 10 or less"
fi
```

---

## 📖 File Details

### Basic_linux_command.md
- **Size:** ~6-7 KB
- **Sections:** 5 main categories + practice
- **Commands:** 16 essential Linux commands
- **Use:** Reference guide for terminal commands

### shell_pro_part1.md
- **Size:** ~10-15 KB
- **Topics:** Variables, operators, control structures
- **Code Examples:** Multiple examples for each topic
- **Use:** Learning shell programming basics

---

## 🎓 How to Use These Files

1. **For Quick Reference:** Use Ctrl+F to search for specific commands
2. **For Learning:** Read sequentially, practice each command
3. **For Projects:** Copy examples and modify for your needs
4. **For Exams:** Review viva questions in `shell_scripts/docs/`

---

## 📊 Topics Covered

| Topic | File | Level |
|-------|------|-------|
| Linux Commands | Basic_linux_command.md | Beginner |
| Command Practice | Basic_linux_command.md | Beginner |
| Shell Basics | shell_pro_part1.md | Beginner |
| Variables | shell_pro_part1.md | Intermediate |
| Control Flow | shell_pro_part1.md | Intermediate |
| Practical Scripts | ../shell_scripts/ | Intermediate |
| Lab Record | ../shell_scripts/docs/ | Advanced |

---

## 🔧 Next Steps

After completing lab_work section:

1. **Move to Shell Scripts:**
   - Navigate to `../shell_scripts/`
   - Read README.md
   - Run calculator.sh and greatest3.sh

2. **Complete Documentation:**
   - Study detailed guides in `docs/`
   - Answer viva questions

3. **Prepare Lab Record:**
   - Use LAB_RECORD.md template
   - Fill in your observations
   - Answer viva questions

4. **Submit:**
   - Compile all files
   - Add to GitHub repository
   - Submit to instructor

---

## 💡 Tips for Success

✓ Practice each command multiple times  
✓ Experiment with variations  
✓ Try to break and fix scripts  
✓ Document your learnings  
✓ Ask questions about unclear concepts  
✓ Compare different methods  
✓ Create your own scripts  

---

## 📞 Resources

- **Linux Manual:** `man command_name`
- **Bash Help:** `bash --help`
- **Script Help:** `bash -x script.sh` (debug mode)
- **Online:** search "bash [topic]"

---

**Lab Work Designed for:** Operating Systems Course - Semester 3  
**Last Updated:** November 18, 2025  
**Status:** Complete with integrated shell scripts project
