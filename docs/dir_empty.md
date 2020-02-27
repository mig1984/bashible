#### dir_empty PATH

Succeeds if the specified directory is empty. Fails otherwise.

Fails also if the directory does not exist.

Example:

```bash

@ Checking if foo is mounted
  - not dir_empty /mnt/foo

```
