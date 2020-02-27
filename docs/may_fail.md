##### may_fail COMMAND [ARG1] [ARG2] ...

Normally, if a command returns a nonzero exitcode, the execution of the script is halted. But sometimes the failing task doesn't matter.

```bash
@ Cleaning up
  - may_fail rmdir /home
  - may_fail rmdir /var
```
