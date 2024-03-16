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


# permissions
# - read : allows file to be read or directory content to be listed
# - write : allows file to be modified or directory content to be modified (require execute permission for directory)
# - execute : allows file to be executed or directory to be entered with `cd`

# permission scope
# - owner : refers to owner of file or directory
# - group : refers to group that owns file or directory
# - everyone : refers to everyone else
chmod a+rw file_name ... # add read and write permission on specified files for everyone i.e. owner, group and others
chmod -R o-x /path/to/directory ... # revoke execute permission on specified directories' content from others
chmod g=r /path/to/file ... # set only read permission on specified files for group members
chmod -R u+x /path/to/directory ... # add execute permission on specified directories' content for owner
chmod og=rw file_name ... # set only read and write permission on specified files for group members and others
