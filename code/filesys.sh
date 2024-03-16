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
