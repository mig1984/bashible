##### call PATH [ARG1] [ARG2] ...

Runs another bash(ile) script using "source" instead of executing it as a command. Avoids multiple parsing of bashible itself. 
The sourced script runs in a new subprocess, therefore it won't affect the caller.

Working directory is set to the same directory where the called script is.

Each call stores the called script with all arguments to a temporary file. Thanks to it, you can use "unless_already" to prevent 
multiple runs [unless_already](unless_already.md).

Use [delayed](delayed.md) to postpone a call to the very end of the process. These delayed tasks will run on the top-level script finish.

```bash
@ Prerequisities
  - call ./system-base.ble
  - call ./install-redis.ble
  - call ./install-nginx.ble

@ Creating a virtual host
  - call ./create-virtual-host.ble example.com
  - delayed unless_already systemd nginx reload
```

##### See also

[unless_already](unless_already.md)  
[delayed](delayed.md)  
