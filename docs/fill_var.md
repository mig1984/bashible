##### fill_var VAR COMMAND ARGS ...

Runs a command and stores it's output in an environment variable. Combine it with "not" and "empty" to raise error immediately if the command returns an empty value.

```bash
@ Setting some variables
  - fill_var DOMAIN not empty cat /etc/domain.txt
  - fill_var HOSTNAME not empty echo $1
```

##### See also

[empty](empty.md)  
[not](not.md)  
[var_empty](var_empty.md)  
[set_var](set_var.md)  