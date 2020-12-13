##### template TEMPLATE_PATH

Implements a very simple Bash templating engine. You can use it for substituting variables.

Example:

Let's have a mysql.conf.tpl which is actually a bash script:

```
...
## Buffer settings
key-buffer-size = $( echo $KEY_BUFFER_SIZE )
read-buffer-size = 2M
sort-buffer-size = $( echo $SORT_BUFFER_SIZE )
max-join-size = 512M
max-heap-table-size = 128M
...
```

Now execute the template in a bashible script:

```bash

use template

# set some variables for the template
KEY_BUFFER_SIZE=1G
SORT_BUFFER_SIZE=128M

@ Creating mysql.conf
  - output_to_file /etc/mysql/mysql.conf.tmp template mysql.conf.tpl
  - mv /etc/mysql/mysql.conf.tmp /etc/mysql/mysql.conf
```

All variables must be set, otherwise the `template` function exits 1.

---

Moreover you can use commands in templates the same way as in bashible scripts
(prefix commands with '-' to stop execution on error)

```
...
## Buffer settings
key-buffer-size = $( - is not empty_output cat /settings/key-buffer-size.txt )
read-buffer-size = 2M
sort-buffer-size = $( - is not empty_output cat /settings/sort-buffer-size.txt )
max-join-size = 512M
max-heap-table-size = 128M
...
```

---

It is also possible to use loops inside brackets:

```
...
## Buffer settings
$( for db in $BINLOG_DO_DB; do echo "binlog-do-db = $db"; done )
key-buffer-size = $( echo $KEY_BUFFER_SIZE )
read-buffer-size = 2M
sort-buffer-size = $( echo $SORT_BUFFER_SIZE )
max-join-size = 512M
max-heap-table-size = 128M
...
```

---

Or you can call another templates from a template,

```html
<html>
  <head>
     $( template head.tpl )
  </head>
  <body>
     $( template body.tpl )
  </body>
</htm>
```
