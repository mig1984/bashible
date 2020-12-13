##### ignore_errors COMMAND [ARG1] [ARG2] ...

Normally, if a command returns a nonzero exitcode, the execution of the script is halted. But sometimes the failing task doesn't matter.

```bash
@ Cleaning up
  - ignore_errors rmdir /home
  - ignore_errors rmdir /var
```
