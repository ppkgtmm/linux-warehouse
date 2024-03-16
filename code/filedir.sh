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

gzip -k file_name ... # compresses specified files retaining original ones
gunzip file_name ... # uncompresses files and removes compressed ones

tar -cf archive.tar file_name ... # creates archive file with specified name
tar -czf archive.tar.gz file_name ... # creates a compressed archive file
tar -tf archive.tar.gz # lists files within specified archive regardless of compression
tar -xf archive.tar.gz # extract files from archive into current directory
tar -xf archive.tar.gz -C target_directory # extract files from archive into existing directory

nano file_name

# there are 2 types of links namely hard link and soft link
# - hard links cannot be used for linking directories or linking to external file system.
# - links are visible when directory contents are listed
# - changes made to object will be reflected in link and vice versa
ln file_name link_name # creates a hard link to specified file
rm file_name # hard link can still be accessed as usual
ln -s /path/to/dir link_name # creates a soft link or symbolic link to specified directory
rm -r /path/to/dir # soft link can no longer be accessed
rm link_name # removes link with specified name
