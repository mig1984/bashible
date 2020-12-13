##### is_var_empty VAR

Return true if the variable is empty or unset.

```bash
@ Getting list of databases to install
  - output_to_var DATABASES cat /etc/databases.txt

@ when not is_var_empty DATABASES
@ Installing databases
  -&& for db in $DATABASES; do
    - run ./install-db.bash "$db"
  done
```

##### See also

[output_to_var](output_to_var.md)  
