##### uncomment_line_matching REGEXP PATH

Removes '#' from the beginning of matching line(s).

```bash

use edit

@ Editing sshd_config
  - uncomment_line_matching 'UseDNS' /etc/ssh/sshd_config
```

##### See also

[comment_line_matching](comment_line_matching.md)..
