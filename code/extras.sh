# use single quotes to prevent variable substitution
alias ma='ls -la $PWD' # create shorthand for command
alias # displays all aliases

# list contents of subfolders in current directory last modified after 3 days ago
find . -type d -mtime +3d | xargs ls -la
