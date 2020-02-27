##### set_var VAR VALUE

Set a variable like var=val, but only if the block passes [when](when.md) condition.

(Is to be used in combination with [-](-.md) where normal definition of var=val is not possible.)

See also [result](result.md) which can be used to do this as well:

```bash

set_var nginx_installed 0

@ Checking for nginx
  - when which nginx
  - set_var nginx_installed 1

@ Doing foobar if nginx is installed
  - when test $nginx_installed -eq 1
  - foobar
```

##### See also

[-](-.md)  
[when](when.md)  
[var_empty](var_empty.md)  
[fill_var](fill_var.md)  
[result](result.md)  

