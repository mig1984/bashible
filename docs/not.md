##### not COMMAND [ARG1] [ARG2] ...

Runs a command and negates it's exit status.

```bash
@ Basic checks
  - not empty echo $1
  - not empty cat /etc/passwd
 
@ Installing cron.d files unless already
  - when not dir_empty /etc/cron.d/
  - cp /shared/cron.d/* /etc/cron.d
```
