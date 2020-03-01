##### output_to DEST COMMAND [ARGS]

Runs a command and stores it's output to a file. It prevents deleting existing contents of the file on failure.

Internally writes output to DEST.tmp using the "tee" command (you see the output printed as well). Then moves the temp file over DEST on success, otherwise removes it.

```bash
@ Storing list of files
  - output_to list.txt not empty ls /home

@ Generating a mysql.cnf from a template
  - output_to /etc/mysql.cnf template mysql.template
```
