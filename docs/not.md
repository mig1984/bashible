##### not COMMAND [ARG1] [ARG2] ...

Runs a command and negates it's exit status.

```bash
@ Basic checks
  - not is_empty_output echo $1
  - not is_empty_output cat /etc/passwd
 
@ Installing cron.d files unless already
  - when not is_empty_dir /etc/cron.d/
  - cp /shared/cron.d/* /etc/cron.d
```
