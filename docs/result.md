##### result NAME COMMAND ARGS...

Stores result of the executed command. The command may fail and it won't stop the execution but store it's error code.

Internally it creates a new function which returns the stored exit status. This function is to be used with when [@](@.md).

WARNING: use the 'result' as the first function in the chain. Some functions like [output_to_file](output_to_file.md) start another process to grab output of their commands.
The resulting function would not be propagated to the parent.

```bash
@ Try to synchronize files
  - result synced rsync /foo /bar

@ when synced
@ Success, mailing it
  - mail me@me.com <<< "files synced ok"

@ when not synced
@ Error happened, mailing it
  - mail me@me.com <<< "files not synced!!!"
```

It's possible to combine multiple checks into one result. Functions "true" and "false" return the appropriate exit code.

```bash

result webserver_is_installed false

@ when which nginx             # is nginx there?
@ and which php                # is php there?
@ Web stack is installed
  - result webserver_is_installed true
```

The newly created function accepts also arguments. You can check for a specific exit code:

```bash
@ This will exit with code 45
 - result stored_res bash -c "exit 45"

@ when stored_res == 0
@ The exitcode was zero

@ when stored_res == 1
@ The exitcode was 1

@ when stored_res == 2
@ The exitcode was 2

@ when stored_res -gt 5
@ and stored_res -le 50
@ The exitcode was greater than 5 and lower or equal 50

@ when stored_res -eq 4
@ or stored_res -eq 7
@ or stored_res -eq 10
@ The exitcode is either 4, 7 or 10
```

##### See also

[@](@.md)  
