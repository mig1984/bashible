##### quiet COMMAND [ARG1] [ARG2] ...

Runs a command with it's output redirected to /dev/null.

```bash
@ Installing nginx unless already
  - skip_if quiet grep centos /etc/hosts
  - yum_install nginx
  - quiet may_fail rm /foo/bar
```
