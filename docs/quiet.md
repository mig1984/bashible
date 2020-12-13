##### quiet COMMAND [ARG1] [ARG2] ...

Runs a command with it's output redirected to /dev/null.

```bash
@ Installing nginx unless already
  when quiet grep centos /etc/hosts
  - yum_install nginx
  - quiet ignore_errors rm /foo/bar
```
