##### comment_line_matching REGEXP PATH

Prefixes matching line(s) by '#' in a given file.

```bash

use edit

@ Editing sshd_config
  - comment_line_matching 'UseDNS' /etc/ssh/sshd_config
```

