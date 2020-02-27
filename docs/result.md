##### result NAME COMMAND ARGS...

Stores result of the executed command. The command may fail.

Internally creates a new function which returns the stored exit status. This function is to be used with [when](when.md) .

```bash
@ Try to synchronize files
  - result synced rsync /foo /bar

@ Mail if synced
  - when synced
  - mail me@me.com <<< "files synced ok"

@ Mail unless synced
  - when not synced
  - mail me@me.com <<< "files not synced!!!"
```

It's possible to combine multiple checks into one result. Functions "true" and "false" return the appropriate exit code.

```bash

result webserver_is_installed false

@ Checking for programs
  - when which nginx                       # is nginx there?
  - when which php                         # is php there?
  - result webserver_is_installed true
```

Moreover, the newly created function accepts arguments. You can check a specific exit code:

```bash
@ This will result in stored exit code 45
 - result res bash -c "exit 45"

@ Check result
 - when res == 0
 - echo res is 0

@ Check result
 - when res == 1
 - echo res is 1

@ Check result
 - when res == 2
 - echo res is 2

@ Check result
 - when res -gt 5
 - when res -le 50
 - echo res is greater than 5 and lower or equal 50
```

##### See also

[when](when.md)  
