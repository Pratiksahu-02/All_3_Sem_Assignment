# Shell Scripts - Documentation & Lab Work

## 📂 Project Structure

```
shell_scripts/
├── README.md                          # This file
├── scripts/                           # Actual shell scripts
│   ├── calculator.sh                  # Basic calculator script
│   └── greatest3.sh                   # Find greatest of three numbers
├── docs/                              # Detailed documentation
│   ├── 01-calculator.md               # Calculator detailed guide
│   ├── 02-greatest3.md                # Greatest of three detailed guide
│   └── LAB_RECORD.md                  # Complete lab record format
└── .gitignore
```

---

## 🚀 Quick Start Guide

### Prerequisites
- Ubuntu/Linux terminal (bash shell)
- Text editor (nano, vim, or gedit)
- Basic understanding of bash commands

### How to Use These Scripts

#### Step 1: Download/Clone the Scripts

```bash
# Navigate to the directory
cd OS/shell_scripts/scripts

# Or if you want to run directly:
cd /path/to/shell_scripts/scripts
```

#### Step 2: Give Execute Permission

```bash
# For calculator script
chmod +x calculator.sh

# For greatest three script
chmod +x greatest3.sh
```

#### Step 3: Run the Scripts

```bash
# Run calculator
./calculator.sh

# Run greatest of three
./greatest3.sh
```

---

## 📝 Scripts Overview

### 1. **calculator.sh** - Simple Calculator
- **Purpose:** Perform basic arithmetic operations (+, -, *, /)
- **Input:** Two numbers and an operator
- **Output:** Result of the operation
- **Features:** 
  - Input validation
  - Division by zero check
  - User-friendly menu

**Quick Run:**
```bash
./calculator.sh
# Enter numbers and operator when prompted
```

---

### 2. **greatest3.sh** - Greatest of Three Numbers
- **Purpose:** Find the largest among three numbers
- **Input:** Three numbers
- **Output:** The greatest number
- **Features:**
  - Simple comparison logic
  - Clear output display

**Quick Run:**
```bash
./greatest3.sh
# Enter three numbers when prompted
```

---

## 📚 Detailed Documentation

For comprehensive documentation including algorithms, step-by-step explanations, and viva questions, see:

- **Calculator Details:** [docs/01-calculator.md](./docs/01-calculator.md)
- **Greatest of Three Details:** [docs/02-greatest3.md](./docs/02-greatest3.md)

**Lab Record:** See `../lab_work/LAB_RECORD.md` for complete lab submission format

---

## 🔍 File Structure Explanation

| File | Purpose |
|------|---------|
| `scripts/` | Contains all executable shell scripts |
| `docs/` | Contains detailed documentation for each script |
| `calculator.sh` | Main calculator script with comments |
| `greatest3.sh` | Main greatest comparison script with comments |
| `README.md` | Overview and quick start guide |

---

## 💡 Learning Objectives

After understanding these scripts, you will learn:

- ✅ How to write a basic shell script
- ✅ How to take user input using `read` command
- ✅ How to use `case` statements for multiple choices
- ✅ How to use `if-else` for conditional logic
- ✅ How to perform arithmetic operations in bash
- ✅ How to handle edge cases (division by zero)
- ✅ How to format output nicely

---

## 🎯 Usage Examples

### Calculator Script Example
```
Input:
  First number: 20
  Second number: 5
  Operator: *

Output:
  Result: 20 * 5 = 100
```

### Greatest Three Script Example
```
Input:
  First number: 15
  Second number: 45
  Third number: 30

Output:
  Numbers entered: 15, 45, 30
  Greatest number is: 45
```

---

## 📖 How to Use in Your Lab Work

1. **Run the scripts** to understand how they work
2. **Read the documentation** in `docs/` folder
3. **Modify the scripts** to experiment
4. **Answer viva questions** in the documentation
5. **Use LAB_RECORD.md** for your lab submission format

---

## 🔧 Customization Tips

You can modify the scripts to:
- Add more operators to calculator (%, ^, etc.)
- Find greatest of 4 or more numbers
- Add input validation for non-numeric values
- Create a menu-driven calculator

---

## 📝 Lab Submission

The complete lab record with experiments, algorithms, and viva questions is located in the parent directory:

**`../lab_work/LAB_RECORD.md`**

This is your lab submission template. Copy the scripts and fill in your details there.

---

## ⚠️ Important Points

- Always give execute permission using `chmod +x` before running
- The `*` operator requires escaping in case statements (`\*`)
- Integer division is used (no decimal results)
- Division by zero is checked and handled

---

**Last Updated:** November 18, 2025  
**Course:** Operating Systems Lab  
**Semester:** 3
