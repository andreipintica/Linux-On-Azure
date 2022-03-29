### File Attributes ###

1. Using any method you choose, create a directory in your home directory called 'attributes'. Once created, change to that directory.

    [user@centos:~] $ mkdir attributes && cd attributes

2. Create three files in this directory called 'test1', 'test2' and 'test3'. The contents of the files can be anything you choose.

    [user@centos:attributes/] $ touch test1 test2 test3

    or

    [user@centos:attributes/] $ echo "Some text" > test1 (repeating for test2 and test3)

3. Using the appropriate octal or ascii permission notation, change permissions to be read, write, execute for the owner and read, execute for everyone else. 
Be sure to apply those permissions to all three files.

    [user@centos:attributes/] $ chmod 755 test*

    or

    [user@centos:attributes/] $ chmod a+rw test* && chmod u+rwx test*

4. On 'test1', leave the permissions as set in Step 3. On 'test2', using the appropriate elevated access and special attributes for files, set the file so that,
regardless of ownership, the file cannot be overwritten but CAN be appended to. On 'test3', using the special attributes for files, set the file to be immutable
regardless of permissions or ownership.

    [user@centos:attributes/] $ sudo chattr +a test2
    [user@centos:attributes/] $ sudo chattr +i test3

5. Before you go further, list the file attributes (not permissions/ownership) and verify the proper attributes are applied as expected. Using the echo command and
output redirection, attempt to overwrite the contents each of the three files and note the results.

    [user@centos:attributes/] $ lsattr
    ----i--------e-- ./test3
    -------------e-- ./test1
    -----a-------e-- ./test2
    [user@centos:attributes/] $ echo "Overwrite" > test1
    [user@centos:attributes/] $ echo "Overwrite" > test2
    bash: test2: Operation not permitted
    [user@centos:attributes/] $ echo "Overwrite" > test3
    bash: test3: Permission denied

6. Attempt to delete 'test1', 'test2' and 'test3'. If the deletion fails for any of the files, set the appropriate special attribute that will allow the deletion to
succeed and verify.

    [user@centos:attributes/] $ rm test1
    [user@centos:attributes/] $ rm test2
    rm: cannot remove ‘test2’: Operation not permitted
    [user@centos:attributes/] $ rm test3
    rm: remove write-protected regular empty file ‘test3’? y
    rm: cannot remove ‘test3’: Operation not permitted
    [user@centos:attributes/] $ sudo chattr -a test2 && sudo chattr -i test3
    [user@centos:attributes/] $ rm test2
    [user@centos:attributes/] $ rm test3