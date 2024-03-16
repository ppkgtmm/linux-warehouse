man man # shows manual of man command

ls -l /path/to/directory # list one item per line with details e.g. permission, owner, last edit date
ls -a # list contents of current folder including hidden content (dot prefixed name)

cd /path/to/directory # switches to specified directory

mkdir -p /path/to/directory ... # create specified directories if don't exist

touch file_name ... # creates empty files in current directory

rm /path/to/file_name ... # removes specified files
rm -r /path/to/directory ... # removes specified directories

cp path/to/source path/to/target # copies a file to another file in specified directory
cp path/to/source ... /path/to/directory # copy specified files to another directory
cp -r /path/to/source /path/to/target # copies a direcotry to another directory
cp -r /path/to/source ... /path/to/target # copy direcotries to another parent directory
cp -r /path/to/source/ ... /path/to/target # copy contents of direcotries to another parent directory

mv source_file target_file # renames file in current directory
mv /path/to/source_file ... /path/to/directory # move specified files to another directory
mv source_dir target_dir  # renames directory in current directory
mv /path/to/source /path/to/target # moves a direcotry to another path
mv /path/to/source/ ... /path/to/target # move direcotries to another parent directory

open file_name /path/to/directory ...

head -n 5 file_name ... # displays first 5 lines of specified files
tail -f file_name ... # displays end of specified files and wait for new data

cat file_name # displays content of specified file in current directory
cat /path/to/file_name ... # display concatenated content of files

# useful for reading large file in fast manner without loading all contents at once
less /path/to/file_name

echo Hello world ! # displays arguments passed

# output file is created if it does not already exist
date > today.txt # overwrites specified file with current date and time
date >> today.txt # appends specified file with current date and time

wc file_name ... # cumulative values are also displayed if multiple files are specified

# count total items in specified directory using no. of lines from ls command
ls -al /path/to/directory | wc -l

sort -f file_name ... # concatenate files and do lexicographical ascending sort (ignore case) on content
sort -nr file_name ... # sort content of files descendingly using numeric sort
sort -k 1,3 file_name ... # sort content of files using first 3 fields in order


uniq file_name # displays unique lines of file
uniq -i file_name # displays unique lines of file (ignore case)
uniq -d file_name # displays single copy of lines with duplicates
uniq -c file_name # displays count of copies for each line
uniq input_name output_file # write unique lines of input file to output file
uniq file_name | wc -l # count number of unique lines in specified file

echo [^0-9]* # displays name of file or subfolder not staring with number in current directory
ls -l *.txt # displays information about file ending with .txt or list content of matching subfolders
echo ~ # displays home directory path of current user
echo "number of files: $(ls -l | wc -l)" # displays count of files in current directory
echo $((3 ** 2)) # displays result after arithmetic computation

export VALUE=166
echo $VALUE # displays value of environment variable defined previously
