diff -u old_file new_file # displays changes in files with surrounding context or lines

# recursively list file and folder in current directory which name ends with .py
find . -name '*.py'
# recursively list matching file and folder (ignore case) in specified directories
find /path/to/directory ... -iname '*.py'
# recursively list subfolders in specified directories
find /path/to/directory ... -type d
# recursively list matching files in specified directories
find /path/to/directory ... -type f -name "*.py" 
find /path/to/directory ... -type f -and \\( -name "*.js" -or -name "*.css" \\)
# recursively list contents which size is larger than 100 KB but smaller than 2 MB
find /path/to/directory ... -size +100k -size -2M
# recursively list contents modified before 3hrs ago but after 2 days ago 
find /path/to/directory ... -mtime -2d -mtime +3h
# concatenate files which name ends with .js and modified after last week
cat $(find /path/to/directory -type f -mtime -1w -name "*.js")


# notes for grep command
# - E : treats a single dot as any one character
# - + : denotes one or more characters
# - * : denotes zero or more characters
# - ? : denotes zero or one character
grep -nC 2 "green" /path/to/file_name ... # get lines containing specified keyword with line number and 2 surrounding lines
grep -ri "green" . # recursively get lines containing specified keyword (ignore case) from files in current directory
grep -Eo "[0-9]+" /path/to/file_name ... # get matching lines from specified files and output only the matching part
grep -Er "[0-9]+" /path/to/directory ... # get matching lines from files in specified directories

# notes for du command
# results will include the directory itself when directories are supplied
du -h /path/to/file_name ... # calculates size of specified files and display with units
du -h | sort -h # find size of folders in current directory and sort results by size taking unit into account
du -h /path/to/directory ... | sort -h | tail -n 5 # find top 5 largest folders in specified directories

df -h # displays disk usage of file systems with units
df -h /path/to/directory /path/to/file_name # displays disk usage of file systems containing specified contents

ps ax # lists all running processes regardless of who initiated

top # list running processes ordered by cpu usage descendingly
top -o mem # list processes ordered by memory usage descendingly
top -o +pid # list processes ordered by process id ascendingly

kill 8355 # terminates process with specified id
kill -INT 8355 # interrupt (usually terminate) specified process
kill -STOP 8355 # stops but does not terminate specified process
kill -CONT 8355 # resumes stop process

top -o mem & # executes top command in background
bg %2 # number for job or stopped process is known from jobs command
fg %2 # number for job or stopped process is known from jobs command

gzip -k file_name ... # compresses specified files retaining original ones
gunzip file_name ... # uncompresses files and removes compressed ones

tar -cf archive.tar file_name ... # creates archive file with specified name
tar -czf archive.tar.gz file_name ... # creates a compressed archive file
tar -tf archive.tar.gz # lists files within specified archive regardless of compression
tar -xf archive.tar.gz # extract files from archive into current directory
tar -xf archive.tar.gz -C target_directory # extract files from archive into existing directory

nano file_name

# use single quotes to prevent variable substitution
alias ma='ls -la $PWD' # create shorthand for command
alias # displays all aliases

# list contents of subfolders in current directory last modified after 3 days ago
find . -type d -mtime +3d | xargs ls -la

# there are 2 types of links namely hard link and soft link
# - hard links cannot be used for linking directories or linking to external file system.
# - links are visible when directory contents are listed
# - changes made to object will be reflected in link and vice versa
ln file_name link_name # creates a hard link to specified file
rm file_name # hard link can still be accessed as usual
ln -s /path/to/dir link_name # creates a soft link or symbolic link to specified directory
rm -r /path/to/dir # soft link can no longer be accessed
rm link_name # removes link with specified name

su username # may require target user's password
# may require current user’s password
sudo mkdir -p /etc/path/to/dir # create sub directory in usually retricted folder
passwd username # updates specified user's password if permitted

# - file or directory owner can do anything to it
# - root user or owner can transfer ownership of file or directory
# - groups are used to provide same set of permissions to multiple users
sudo chown -R username /path/to/directory # recursively transfer ownership of directory contents to specified user
sudo chown username /path/to/file # transfer ownership of file to specified user
sudo chown :group_name /path/to/file # transfer group ownership of file to specified group

chmod a+rw file_name ... # add read and write permission on specified files for everyone i.e. owner, group and others
chmod -R o-x /path/to/directory ... # revoke execute permission on specified directories' content from others
chmod g=r /path/to/file ... # set only read permission on specified files for group members
chmod -R u+x /path/to/directory ... # add execute permission on specified directories' content for owner
chmod og=rw file_name ... # set only read and write permission on specified files for group members and others
