##### quiet COMMAND [ARG1] [ARG2] ...

Runs a command with it's output redirected to /dev/null.

```bash
@ when quiet grep centos /etc/hosts
@ Installing nginx unless already
  - yum_install nginx
  - quiet ignore_errors rm /foo/bar
```
