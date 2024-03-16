# 🐥 Linux Part 1

### shell scripting

- shell refers to interface between users and operating system (OS)
- operating system is a software that manages hardwares and provide services to other softwares
- shell scripting refers to writing script or file with sequence of commands to automate process in Linux OS

### commands

- ***whoami*** : shows the currently logged-in user name
- ***man*** : provides information or manual about command
- ***clear*** : clears from terminal screen
- ***pwd*** : prints current working directory
- ***ls*** : lists contents of specified directory default to current directory
- ***cd*** : changes working directory
- ***mkdir*** : create directories
- ***touch*** : creates empty files
- ***rm*** : removes files or directories
- ***cp*** : copies file or directory
- ***mv*** : moves or renames file or directory
- ***open*** : opens files or directories using default program
- ***head*** : displays first few lines of a file
- ***tail*** : displays last new lines of a file
- ***date*** : prints current date and time
- ***cat*** : display concatenated content of files
- ***less*** : displays contents of a file one page at a time
- ***echo*** : displays arguments passed to it
- ***>*** and ***>>*** : redirects standard output to a file
- ***wc*** : displays word, line and byte count of files
- ***|*** : passes output of previous command as input of next command
- ***sort*** : merge and sort lines of files
- ***uniq*** : displays unique lines of a file

### wildcards

- ***\**** : refers to zero or more characters
- ***?*** : refers to single character in path name
- ***[...]*** : matches any character within the brackets
- ***[^...]*** : matches any character NOT in the brackets

### substitution

- tilde or ***~*** : refers to home directory path of current user.
- ***$(...)*** : allows substituting command result
- ***$((...))*** : allows substituting arithmetic result 

### environment variable

***export*** : allows setting environment variable through terminal

### expansion

***{...,...}*** : expands pattern to multiple patterns