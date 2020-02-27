##### append_line LINE PATH

Appends a line to a file unless already found at the end of the file.

```bash

use edit

@ Editing sshd_config
  - append_line 'UseDNS no;' /etc/ssh/sshd_config
```

##### See also

[add_line](add_line.md)  
[prepend_line](prepend_line.md)  

