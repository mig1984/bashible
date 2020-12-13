##### empty COMMAND [ARG1] [ARG2] ...

Runs the command and returns true if it's output is empty. Combine it with "not" to negate it.

```bash
@ Setting some variables and checking whether they contain something
  - output_to_var DOMAIN not empty cat /etc/myapp/domain.txt
  - output_to_var FOO not empty echo $BAR
```

##### See also

[not](not.md)  
[output_to_var](output_to_var.md)  
[is_var_empty](var_empty.md)  
