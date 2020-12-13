##### in_timeout SECS COMMAND [ARG1] [ARG2] ...

Runs a command and fails if it lasts more than SECS seconds.

```bash

use net timeout

@ Start nginx service
  - systemd start nginx
  - in_timeout 20 wait_for_tcp 127.0.0.1:80 up

@ when not in_timeout 20 wait_for_tcp 127.0.0.1:80 up
@ Start nginx service and send me a mail unless successful
  - systemd start nginx
  - mail me@me.com <<< "nginx is not up"
```
