##### not COMMAND [ARG1] [ARG2] ...

Runs a command and negates it's exit status.

```bash
@ Basic checks
  - is not empty_output echo $1
  - is not empty_output cat /etc/passwd
 
@ Installing cron.d files unless already
  - when is not empty_dir /etc/cron.d/
  - cp /shared/cron.d/* /etc/cron.d
```
