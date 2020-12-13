##### halt [MESSAGE]

Stops the process immediately. 

All possible parent (caller) scripts will stop immediately as well.

It will exit with exitcode 43.

```bash
@ when not test -d /tmp
@ Basic checks
 - halt "there is no /tmp dir"

```

##### See also

[fail](fail.md)  
[finish](finish.md)  
[when](when.md)  
