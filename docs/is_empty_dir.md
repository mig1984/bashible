#### is_empty_dir PATH

Succeeds if the specified directory is empty. Fails otherwise.

Fails also if the directory does not exist.

Example:

```bash

@ Checking if foo is mounted
  - is not empty_dir /mnt/foo

```
