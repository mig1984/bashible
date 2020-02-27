##### finish [MESSAGE]

Stops the execution of the current bashible script. Parent (caller) scripts will continue if this script is a sub-script.

```bash
@ Check for nginx
 - when not test -f /usr/local/bin/nginx
 - finish "already installed"

```

##### See also

[fail](fail.md)  
[halt](halt.md)  
[skip](skip.md)  
[when](when.md)  
