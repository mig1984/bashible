##### delayed COMMNAD ARGS ...

Runs a command at the very end of the process. For instance, use it to reload a webserver after the work is done. 
Combine it with "unless_already" to prevent multiple reloads.

You could also combine it with "may_fail" to avoid interruption of the process in the very end if a delayed command fails.

In the following example, two virtual hosts will be generated, but nginx will reload only once afterwards. 
You can delay ./reload-nginx.bash also in subscripts (called from this parent; it would have more sense to put
the webserver reload in the create-virtual-host.ble script).

```bash
@ Creating virtual host example1.com
  - run ./create-virtual-host.bash example1.com
  - delayed unless_already ./reload-nginx.ble

@ Creating virtual host example2.com
  - run ./create-virtual-host.bash example2.com
  - delayed unless_already ./reload-nginx.ble

@ Cleanup at the end
  - delayed unless_already ignore_errors ./cleanup.ble

```

##### See also

[run](run.md)  
[ignore_errors](ignore_errors.md)  
[unless_already](unless_already.md)  
