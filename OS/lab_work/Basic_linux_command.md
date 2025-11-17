# Linux Lab Work - Command Reference Guide

## Table of Contents
- [System Information](#system-information)
- [File & Directory Operations](#file--directory-operations)
- [File Content Operations](#file-content-operations)
- [Text Utilities](#text-utilities)
- [Practice Exercise](#practice-exercise)

---

## System Information

### 1. `date` – Show current date and time
**Purpose:** Display the system date and time.

```bash
$ date
Mon Nov 17 19:30:12 IST 2025
```

### 2. `cal` – Show calendar
**Purpose:** View calendar for the current or specified month.

```bash
$ cal                    # current month
$ cal 11 2025            # November 2025
```

### 3. `who` – Who is logged in
**Purpose:** Show users currently logged into the system.

```bash
$ who
pratik   tty2   2025-11-17 18:02
```

### 4. `tty` – Which terminal am I using?
**Purpose:** Display the current terminal device file.

```bash
$ tty
/dev/pts/0
```

### 5. `pwd` – Print working directory
**Purpose:** Show the current directory path.

```bash
$ pwd
/home/pratik
```

---

## File & Directory Operations

### 6. `ls` – List files and folders
**Purpose:** Display contents of a directory.

| Command | Purpose |
|---------|---------|
| `ls` | List files/folders in current directory |
| `ls -l` | Long listing with details |
| `ls -a` | Show hidden files (starting with .) |
| `ls -lah` | Detailed listing with human-readable sizes |

```bash
$ ls
$ ls -l      # long listing
$ ls -a      # show hidden files
$ ls -lah    # detailed + human readable sizes
```

### 7. `mkdir` – Make directory
**Purpose:** Create folders.

```bash
$ mkdir testdir                    # create single folder
$ mkdir -p projects/linux/notes    # create nested directories
```

### 8. `rmdir` – Remove empty directory
**Purpose:** Delete an empty directory.

```bash
$ rmdir testdir
```

⚠️ **Note:** Only works if the folder is empty.

### 9. `cd` – Change directory
**Purpose:** Navigate between directories.

| Command | Purpose |
|---------|---------|
| `cd /home/pratik` | Change to specific directory |
| `cd projects` | Enter a folder (relative path) |
| `cd ..` | Go back one level |
| `cd` | Return to home directory |

```bash
$ cd /home/pratik
$ pwd
/home/pratik

$ cd projects
$ cd ..
$ cd
```

---

## File Content Operations

### 10. `cat` – View / combine files
**Purpose:** Display file contents or create simple files.

```bash
# View file content
$ cat file.txt

# Create a file
$ cat > hello.txt
Hello from Linux
[Ctrl + D]      # press to finish input

# View created file
$ cat hello.txt
Hello from Linux
```

### 11. `cp` – Copy files and folders
**Purpose:** Duplicate files and directories.

```bash
# Copy a file
$ cp hello.txt hello_copy.txt

# Copy into a directory
$ mkdir backup
$ cp hello.txt backup/

# Copy directory (with contents)
$ cp -r backup backup_copy
```

### 12. `mv` – Move / rename
**Purpose:** Move files/folders or rename them.

```bash
# Rename a file
$ mv hello.txt greetings.txt

# Move file into folder
$ mv greetings.txt backup/

# Move + rename
$ mv backup/greetings.txt greetings_new.txt
```

### 13. `rm` – Remove files and folders
**Purpose:** Delete files and directories.

| Command | Purpose |
|---------|---------|
| `rm file.txt` | Delete a file |
| `rm -d folder` | Delete empty directory |
| `rm -r folder` | Delete directory with contents |
| `rm -rf folder` | Force delete (no confirmation) |

```bash
$ rm hello_copy.txt           # delete file
$ rm -d backup_copy           # delete empty directory
$ rm -r backup                # delete with contents
$ rm -rf backup               # force delete
```

⚠️ **Warning:** Deleted files don't go to recycle bin! Use with caution.

---

## Text Utilities

### 14. `echo` – Print text / variables
**Purpose:** Display text or variable values.

```bash
# Print simple text
$ echo Hello Linux
Hello Linux

# Print a variable
$ name="Pratik"
$ echo My name is $name
My name is Pratik
```

### 15. `bc` – Command-line calculator
**Purpose:** Perform mathematical calculations (including decimals).

**Interactive mode:**
```bash
$ bc
10 + 20
5 * 7
10 / 3
scale=3     # set decimal places
10 / 3
quit        # exit
```

**One-line calculation:**
```bash
$ echo "scale=2; 10/3" | bc
3.33
```

### 16. `wc` – Word / line / byte count
**Purpose:** Count lines, words, and characters in files.

| Command | Purpose |
|---------|---------|
| `wc file.txt` | Show lines, words, bytes |
| `wc -l file.txt` | Count lines only |
| `wc -w file.txt` | Count words only |
| `wc -c file.txt` | Count bytes only |

```bash
$ wc greetings_new.txt
  1  3  18 greetings_new.txt
# 1 line, 3 words, 18 bytes

$ wc -l greetings_new.txt    # lines
$ wc -w greetings_new.txt    # words
$ wc -c greetings_new.txt    # bytes
```

---

## Practice Exercise

Follow these commands in order to practice:

```bash
$ pwd
$ mkdir linux_practice
$ cd linux_practice
$ date
$ cal
$ echo "This is my first file" > f1.txt
$ echo "Second line of text" > f2.txt
$ ls
$ cat f1.txt
$ cp f1.txt f1_copy.txt
$ mv f2.txt notes.txt
$ ls -l
$ wc f1.txt
$ mkdir test
$ mv f1_copy.txt test/
$ ls test
$ rm test/f1_copy.txt
$ rmdir test
$ cd ..
$ rm -r linux_practice
```

---

**Last Updated:** November 17, 2025
