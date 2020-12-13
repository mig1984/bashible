##### is_empty_output COMMAND [ARG1] [ARG2] ...

Runs the command and returns true if it's output is empty. Combine it with "not" to negate it.

```bash
@ Setting some variables and checking whether they contain something
  - output_to_var DOMAIN is not empty_output cat /etc/myapp/domain.txt
  - output_to_var FOO is not empty_output echo $BAR
```

##### See also

[not](not.md)  
[output_to_var](output_to_var.md)  
[is_empty_var](is_empty_var.md)  

