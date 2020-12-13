##### is_empty_var VAR

Return true if the variable is empty or unset.

```bash
@ Getting list of databases to install
  - output_to_var DATABASES cat /etc/databases.txt

@ when is not empty_var DATABASES
@ Installing databases
  -&& for db in $DATABASES; do
    - run ./install-db.bash "$db"
  done
```

##### See also

[output_to_var](output_to_var.md)  
