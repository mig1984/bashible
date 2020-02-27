##### when COMMAND

Do following tasks only if the specified command succeeds.

You can combine it with [not](not.md), [may_fail](may_fail.md), store the result using [result](result.md), etc.

```bash
@ Installing nginx
  - when not test -f /usr/local/bin/nginx
  - yum install nginx

@ Installing apache
  - when test -f apache-is-installed.txt
  - halt "apache is already intalled"
```

or check the last result directly using "ok",

```bash
@ Start nginx and send me an email if it is not running
  - systemctl start nginx
  - may_fail in_timeout 20 wait_for_tcp 127.0.0.1:80 up
  - when not ok
  - mail me@me.com <<< "nginx is still not up!"
```

##### See also

[not](not.md)  
[may_fail](may_fail.md)  
[result](result.md)  
[ok](ok.md)  
