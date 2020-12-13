#### - COMMAND [ARG1] [ARG2] ...

Does a command if conditions match. The command may be also a bash function. (Actually, the '-' itself is a bash function and everything that follows are it's arguments.)

When the command exits nonzero, further execution of the script (and all caller scripts) is halted and an error is displayed.

You can prefix it with [ignore_errors](ignore_errors.md) to avoid stopping execution, if the exitcode does not matter.

##### Example:

```bash
@ Installing nginx
  when not test -f /usr/bin/nginx   # set skipping mode if the test succeeds
  - yum_install nginx                 # skipped if already
  - systemctl start nginx             # skipped if already

@ Purging temporary files if any      # now the skipping mode is off again
  - ignore_errors rm /tmp/temp1
  - ignore_errors rm /tmp/temp2
```

##### See also

[- VARIABLE = VALUE](dash2.md)  
[- && (conditional loop)](dash3.md)  
[and_when](and_when.md)  
[or_when](or_when.md)  
[@](@.md)  
[ignore_errors](ignore_errors.md)  