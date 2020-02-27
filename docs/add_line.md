##### add_line LINE PATH

Adds a line to a file unless aleady found elsewhere in the file.

```bash

use edit

@ Editing sshd_config
  - add_line 'UseDNS no;' /etc/ssh/sshd_config
```

##### See also

[append_line](append_line.md)  
[prepend_line](prepend_line.md)  
