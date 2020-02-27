##### replace_matching REGEXP STRING PATH

Replaces matching regexps with a string.

```bash

use edit

@ Editing sshd_config
  - replace_matching 'enabled=0' 'enabled=1' /etc/default/foo.cfg
```

##### See also

[replace_line_matching](replace_line_matching.md)  
[remove_line_matching](remove_line_matching.md)  
