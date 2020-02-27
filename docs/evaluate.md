##### evaluate STRING

Sometimes you need more complex things, for instance a pipeline or conditions.

In the following example, users starting with the letter "g" will be loaded into a variable USERS (and it will also check whether it contains something):

```bash
@ Loading some variables
  - fill_var USERS not empty evaluate 'cat /etc/passwd | egrep -e ^g'
  - echo $USERS  # now you can be sure there is something
```

##### See also

[fill_var](fill_var.md)  