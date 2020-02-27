##### replace_line_matching REGEXP STRING PATH

Replaces matching line(s) with a specified string.

It replaces whole lines!

```bash

use edit

@ Editing sshd_config
  - replace_line_matching 'domain' 'domain=example.com' /etc/default/domain.cfg
```

##### See also

[replace_matching](replace_matching.md)  
[remove_line_matching](remove_line_matching.md)  
