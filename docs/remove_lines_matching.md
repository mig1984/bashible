##### remove_line_matching REGEX PATH

Removes matching line(s) from a file.

```bash

use edit

@ Editing sshd_config
  - remove_line_matching 'UseDNS' /etc/ssh/sshd_config
```

##### See also

[replace_line_matching](replace_line_matching.md)  
[replace_matching](replace_matching.md)  
