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