##### var_empty VAR

Return true if the variable is empty or unset.

```bash
@ Installing DATABASES
  - fill_var DATABASES cat /etc/databases.txt
  - skip_if var_empty DATABASES
  for db in $DATABASES; do
    - run ./install-db.bash "$db"
  done
```

##### See also

[fill_var](set_var.md)  
[set_var](set_var.md)  
