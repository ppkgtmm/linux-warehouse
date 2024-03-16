# 🐥 Linux Warehouse

### shell scripting

- shell refers to interface between users and operating system (OS)
- operating system is a software that manages hardwares and provide services to other softwares
- shell scripting refers to writing script or file with sequence of commands to automate process in Linux OS

### commands

- basic commands

command  | description
:------- | :-----------------------------------------------------------------
whoami   | shows the currently logged-in user name
man      | provides information or manual about command
clear    | clears from terminal screen
date     | prints current date and time
echo     | displays arguments passed to it
\|       | passes output of previous command as input of next command
export   | allows setting environment variable through terminal

- file system related

command  | description
:------- | :-----------------------------------------------------------------
pwd      | prints current working directory
ls       | lists contents of specified directory default to current directory
cd       | changes working directory
mkdir    | create directories
touch    | creates empty files
rm       | removes files or directories
cp       | copies file or directory
mv       | moves or renames file or directory
open     | opens files or directories using default program

- file content related

command  | description
:------- | :-----------------------------------------------------------------
head     | displays first few lines of a file
tail     | displays last new lines of a file
cat      | display concatenated content of files
less     | displays contents of a file one page at a time
\> and \>\> | redirects standard output to a file
wc       | displays word, line and byte count of files
sort     | merge and sort lines of files
uniq     | displays unique lines of a file

### wildcards

symbol | description
:----- | :----------------------------------------
\*      | refers to zero or more characters
?      | refers to single character in path name
[...]  | matches any character within the brackets
[^...] | matches any character NOT in the brackets

### substitution

symbol     | description
:--------- | :---------------------------------------------
tilde or ~ | refers to home directory path of current user
$(...)     | allows substituting command result
$((...))   | allows substituting arithmetic result
{...,...}  | expands pattern to multiple patterns

### commands (continued)

command | description
:------ | :---------------------------------------------------
diff    | detects differences between 2 files or file versions
find    | find files and folders matching specified criteria
grep    | allows searching file content or command output

notes for grep command

- \-E : treats a single dot as any one character
- \+ : denotes one or more characters
- \* : denotes zero or more characters
- ? : denotes zero or one character
