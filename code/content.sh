head -n 5 file_name ... # displays first 5 lines of specified files
tail -f file_name ... # displays end of specified files and wait for new data

cat file_name # displays content of specified file in current directory
cat /path/to/file_name ... # display concatenated content of files

# useful for reading large file in fast manner without loading all contents at once
less /path/to/file_name

# output file is created if it does not already exist
date > today.txt # overwrites specified file with current date and time
date >> today.txt # appends specified file with current date and time

wc file_name ... # cumulative values are also displayed if multiple files are specified

sort -f file_name ... # concatenate files and do lexicographical ascending sort (ignore case) on content
sort -nr file_name ... # sort content of files descendingly using numeric sort
sort -k 1,3 file_name ... # sort content of files using first 3 fields in order

uniq file_name # displays unique lines of file
uniq -i file_name # displays unique lines of file (ignore case)
uniq -d file_name # displays single copy of lines with duplicates
uniq -c file_name # displays count of copies for each line
uniq input_name output_file # write unique lines of input file to output file
uniq file_name | wc -l # count number of unique lines in specified file
