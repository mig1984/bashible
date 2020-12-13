##### use FEATURES ...

Import (source) modules. They must reside within the same directory as bashible.

For instance here we import the template engine:

It will always fail when the specified module can not be loaded.

```bash

use template

@ Generating my.cnf
  - output_to_file /etc/my.cnf.tmp template my.cnf.tpl
  - mv /etc/my.cnf.tmp /etc/my.cnf
```
