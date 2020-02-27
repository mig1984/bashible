#### base_dir PATH

Sets a base directory. The current working directory will be reset to this base dir on every block start.
The default base directory is the same directory as where the script itself resides in.

Example:

```bash

@ Now the working directory is the same as of the script
  - pwd
  - ls

base_dir '/etc'

@ Now we are working in /etc
  - cp passwd passwd.bak
  - cp shadow shadow.bak
  - cd /
  - cd /foo/bar

@ We are still working in /etc
  - cp group group.bak

reset_base_dir

@ Now the working directory is again the one where the script is
  - pwd
  - ls

```

##### See also

[reset_base_dir](reset_base_dir.md)  
[orig_dir](orig_dir.md)  

