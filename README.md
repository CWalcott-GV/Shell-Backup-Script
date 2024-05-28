Objective was to create a custom shell script that creates backups of files in a Linux architecture machine. 

Demonstration of different arguments that can be passed. Also showing a "--help" command to show how user is supposed to work.

Use follows syntax **./backup file1 file2 file3 [options]** where file1 - 3 are files to be copied into new directory "backup" that will be created in same directory.

Let's break down the script's functionality:

**Argument Handling:** The script starts by checking if there are any arguments passed to it. If there are no arguments ($# is the number of arguments), it prints a message indicating that at least one argument is required and exits with an error code.

**For Loop:** It then iterates over each argument passed to the script.

**Option Handling:** Within the loop, it checks for specific options:

  -c: It displays the count of files and directories in the ~/backup directory using ls piped to wc -l, and then displays the disk usage of ~/backup using du -h.
  -l: It lists all files and directories in the ~/backup directory.
  --help: It provides a help message explaining the syntax and options available.
  
**File or Directory Handling:** For each non-option argument, it checks if the argument exists:

If it exists and is a regular file (-f), it copies the file to the ~/backup directory.
If it exists and is a directory (-d), it recursively copies the directory and its contents to the ~/backup directory.
If it doesn't exist, it prints a message indicating that the file or directory does not exist.

**Backup Directory Creation:** Finally, it checks if the ~/backup directory exists. If it doesn't, it creates it."


