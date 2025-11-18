# GitHub Repository Structure Guide

## 📁 Complete Directory Structure

```
All_3_Sem_Assignment/
└── OS/
    ├── lab_work/
    │   └── readme.md                    # Linux commands reference
    │
    └── shell_scripts/                   ← NEW PROJECT
        ├── README.md                    # Main documentation & quick start
        ├── .gitignore                   # Git ignore rules
        │
        ├── scripts/                     # Executable shell scripts
        │   ├── calculator.sh            # Script 1: Basic calculator
        │   └── greatest3.sh             # Script 2: Find greatest of three
        │
        └── docs/                        # Detailed documentation
            ├── 01-calculator.md         # Calculator: Algorithm + Viva Qs
            ├── 02-greatest3.md          # Greatest: Algorithm + Viva Qs
            └── LAB_RECORD.md            # Complete lab record format
```

---

## 📋 File Descriptions

### Root Level Files

| File | Purpose |
|------|---------|
| `README.md` | Quick start guide, project overview, and usage instructions |
| `.gitignore` | Specifies files to exclude from git commits |

### `/scripts` Directory

| File | Purpose |
|------|---------|
| `calculator.sh` | Simple calculator performing +, -, *, / operations |
| `greatest3.sh` | Find the greatest among three numbers |

### `/docs` Directory

| File | Purpose |
|------|---------|
| `01-calculator.md` | Calculator documentation with algorithm, code, viva questions |
| `02-greatest3.md` | Greatest-three documentation with 2 methods, viva questions |
| `LAB_RECORD.md` | Complete lab record suitable for submission with all experiments |

---

## 🎯 How to Use This Repository

### For Learning
1. Start with `README.md` for overview
2. Read `docs/01-calculator.md` for first script
3. Read `docs/02-greatest3.md` for second script
4. Run the scripts from `/scripts` directory

### For Lab Submission
1. Use `docs/LAB_RECORD.md` as your lab record template
2. Fill in your name, roll number, and observations
3. Copy the scripts to demonstrate they work
4. Answer all viva questions

### For GitHub Upload
```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# Commit with message
git commit -m "Add shell scripts: calculator and greatest-of-three"

# Push to repository
git push origin main
```

---

## 🚀 Quick Start Commands

```bash
# Navigate to scripts
cd /media/pratiksahu/ad6ce59d-1334-41ec-be0b-0e1a3d7064c7/Program/All_3_Sem_Assignment/OS/shell_scripts/scripts

# Give execute permission
chmod +x calculator.sh greatest3.sh

# Run calculator
./calculator.sh

# Run greatest-three
./greatest3.sh
```

---

## 📊 What Each File Contains

### calculator.sh
- **Lines:** ~55
- **Key Concepts:** case statement, arithmetic operations, error handling
- **Skills Taught:** Menu-driven programs, input validation, conditional logic
- **Time to Run:** 2-3 minutes

### greatest3.sh
- **Lines:** ~30
- **Key Concepts:** if-else statements, comparison operators, variable comparison
- **Skills Taught:** Number comparison, logical operators, conditional logic
- **Time to Run:** 1-2 minutes

### Documentation Files
- **01-calculator.md:** ~400 lines with algorithm, code, and 10 viva questions
- **02-greatest3.md:** ~350 lines with 2 methods, code, and 10 viva questions
- **LAB_RECORD.md:** ~500 lines with complete lab record format for both experiments

---

## ✨ Key Features

✅ **Well-organized structure** - Easy to navigate  
✅ **Complete documentation** - Every concept explained  
✅ **Viva questions** - 10 Q&A for each script  
✅ **Multiple approaches** - Shows different methods to solve same problem  
✅ **Lab record format** - Ready for submission  
✅ **Sample outputs** - Example runs with expected results  
✅ **Best practices** - Comments, formatting, error handling  
✅ **Extensible** - Easy to add more scripts  

---

## 🔗 References

All files include:
- ✓ Proper comments and explanations
- ✓ Step-by-step algorithms
- ✓ Complete working code
- ✓ Sample input/output examples
- ✓ Viva questions with answers
- ✓ Key concepts explained
- ✓ Modifications and extensions

---

## 💡 Better Way to Represent in GitHub

### Recommended Git Commit Messages
```bash
git commit -m "Add shell scripts: calculator and greatest-of-three numbers"
git commit -m "Add detailed documentation with algorithms and viva questions"
git commit -m "Add lab record format for submission"
```

### Create a .github/README.md for GitHub Profile
If you want to showcase on GitHub:
```markdown
# Operating Systems Lab Work

Collection of shell scripts for OS lab experiments.

## Scripts Included
- Basic Calculator
- Greatest of Three Numbers

## Quick Start
See `/shell_scripts/README.md` for detailed instructions.
```

### GitHub Folder Structure Tips
1. **Keep it organized** - Use `/scripts`, `/docs` folders ✓
2. **Add README at each level** - We have main README ✓
3. **Use .gitignore** - We have it configured ✓
4. **Clear naming** - numbered files `01-calculator.md`, `02-greatest3.md` ✓
5. **Documentation** - Each script has detailed docs ✓
6. **Examples** - Sample outputs included ✓

---

## 📝 For Your Lab Submission

**What to Include:**
1. ✅ All script files
2. ✅ Complete documentation
3. ✅ Algorithm descriptions
4. ✅ Sample outputs
5. ✅ Viva question answers
6. ✅ Lab record signature page

**What We Provided:**
- ✅ 2 working shell scripts
- ✅ 3 detailed documentation files
- ✅ Complete lab record template
- ✅ 20+ viva questions with answers
- ✅ Sample test cases
- ✅ Multiple solution methods

---

## 🎓 Learning Path

**Beginner Level (Week 1):**
- Read README.md
- Run calculator.sh
- Run greatest3.sh

**Intermediate Level (Week 2):**
- Read 01-calculator.md in detail
- Understand the algorithm
- Try modifying the script

**Advanced Level (Week 3):**
- Read 02-greatest3.md
- Understand both methods
- Create your own variations

**Lab Submission (Week 4):**
- Fill LAB_RECORD.md
- Answer all viva questions
- Demonstrate scripts work
- Submit to instructor

---

## 🤝 How This Helps Your Lab Work

| Aspect | Benefit |
|--------|---------|
| **Organization** | Easy to navigate and understand |
| **Documentation** | Clear explanations for every concept |
| **Testing** | Sample outputs show expected behavior |
| **Learning** | Multiple approaches teach different techniques |
| **Submission** | Lab record format ready to submit |
| **Viva prep** | 20 questions with answers for exam prep |
| **GitHub portfolio** | Professional structure for your resume |

---

**This structure represents industry best practices for organizing educational projects on GitHub!**

Last Updated: November 18, 2025
