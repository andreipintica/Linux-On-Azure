000 = --- = 0
001 = --x = 1
010 = -w- = 2
011 = -wx = 3
100 = r-- = 4
101 = r-x = 5
110 = rw- = 6
111 = rwx = 7

Now let's explain the columns with permissions.

drwxr-xr-x 2 tom tom 4096 Jan 2 09:23 Images
-rw-r--r-- 1 tom tom 25 Jan 5 14:29 File2

The first bit (-) stands for a file or the (d) stands for a folder. There are others for example (l) for link. Even more examples:

- -> file
c -> character device
d -> directory
l -> symbolic link
s -> Unix socket
b -> block device
p -> pipeline

The permissions consist of 12 bits. We have here 9 bits for the permissions. The first 3 are for the owner, the next 3 for the group and the last 3 for the "world/others".

d|rwx|r-x|r-x| 2 tom tom 4096 Jan 2 09:23 Images

r stands for read
w stands for write
x is for execute (for a file, this would be for example an executable script - to execute a script needs r-x)
x stands for execute (for a directory, this means that you can change into the directory - because open/execute folder)

12-9 results in 3, which means there are 3 bits left. These 3 bits are used for special permissions, namely for SUID, SGID and Sticky Bit   