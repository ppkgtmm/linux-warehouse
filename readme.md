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
:------ | :----------------------------------------------------------------------------------
diff    | detects differences between 2 files or file versions
find    | find files and folders matching specified criteria
grep    | allows searching file content or command output
du      | calculates size default for current directory
df      | calculates disk usage of file systems
history | display commands history where most recently run command is at bottom
ps      | list current running user initiated processes
top     | displays all running processes in real-time. useful for monitoring
kill    | sends specified signal by default TERM to a process
&       | useful in running long running commands as background job
jobs    | lists background jobs or stopped processes created in current shell session
bg      | resumes foreground job or stopped process in background
fg      | brings background job to foreground or resumes stopped process in foreground
gzip    | compresses files to reduce storage consumption
gunzip  | uncompresses specified g-zip files
tar     | useful in manipulating archive which contains multiple files packaged together
nano    | opens a text file for editing. save changes with ctrl+O and quit with editor ctrl+X
alias   | creates alias for long command in current shell session
xargs   | passes output of previous command as inputs of next command
ln      | allows creating links or shortcuts
who     | displays users logged in to system
su      | switches to specified user
sudo    | provides elevated privileges to run critical but permitted commands
passwd  | updates current user's password by default
chown   | changes owner of file or directory
