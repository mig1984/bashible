##### wait_for_tcp MATCH up|down

Waits for a listening tcp service to be up or down. 

Internally uses "netstat -ltn".

warning: may not work on all platforms!

```bash

use net timeout

@ Stop nginx service
  - service nginx stop
  - timeout 20 wait_for_tcp 127.0.0.1:80 down
```
