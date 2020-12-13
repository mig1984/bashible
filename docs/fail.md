##### fail [MESSAGE]

Interrupts execution of the script with a message displayed on stderr. It interrupts the full process.

It will exit with exitcode 42.

```bash

@ Basic checks
  when not test -x /usr/sbin/nginx
  - fail "nginx must be installed first"

```

##### See also

[finish](finish.md)  
[halt](halt.md)  
[when](when.md)  
