##### when COMMAND

Implements a condition in a block ([@](docs/@.md)).

Do following tasks only if the specified command succeeds.

```bash
@ Installing nginx
  - when not test -f /usr/local/bin/nginx
  - yum install nginx

@ Installing apache
  - when test -f apache-is-installed.txt
  - halt "apache is already intalled"
```

Combine it with [result](result.md),

```bash
@ This will exit with code 45
 - result res bash -c "exit 45"

@ Check result
 - when res == 0
 - echo res is 0

@ Check result
 - when res == 1
 - echo res is 1

@ Check result
 - when res == 2
 - echo res is 2

@ Check result
 - when res -gt 5
 - when res -le 50
 - echo res is greater than 5 and lower or equal 50
```

##### See also

[result](result.md)  
[not](not.md)  
[may_fail](may_fail.md)  

