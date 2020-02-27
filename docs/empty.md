##### empty COMMAND [ARG1] [ARG2] ...

Runs the command and returns true if it's output is empty. Combine it with "not" to negate it.

```bash
@ Setting some variables and checking whether they contain something
  - fill_var DOMAIN not empty cat /etc/myapp/domain.txt
  - fill_var FOO not empty echo $BAR
```

##### See also

[not](not.md)  
[evaluate](evaluate.md)  
[fill_var](fill_var.md)  
[set_var](set_var.md)  
[var_empty](var_empty.md)  
