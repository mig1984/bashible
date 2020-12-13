##### finish [MESSAGE]

Stops the execution of the current bashible script. Parent (caller) scripts will continue if this script is a sub-script.

```bash
@ when not test -f /usr/local/bin/nginx
@ Check for nginx
 - finish "already installed"

```

##### See also

[fail](fail.md)  
[halt](halt.md)  
[when](when.md)  
