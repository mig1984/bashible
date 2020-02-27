##### prepend_line LINE FILE

Prepends a file with a line (unless already).

```bash

use edit

@ Editing sshd_config
  - prepend_line 'UseDNS no;' /etc/ssh/sshd_config
```

##### See also

[add_line](add_line.md)  
[append_line](append_line.md)  
