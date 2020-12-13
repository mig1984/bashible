##### output_to_file VARIABLE OPTIONS COMMAND ARGS ...

Write output of a command into a file.

Options:

-1|--stdout
-2|--stderr
-a|--append

Internally it does a redirect: single '>' or double '>>' when --append is specified.

```bash

@ Writing some files
  - output_to_file only_stdout.txt find -type d /tmp
  - output_to_file both.txt -1 -2 ignore_errors find -type d /home
  - output_to_file error_message.txt -2 ignore_errors ls /asdfasdfasdf
  - output_to_file growing_file.txt --append ls /home
```

If the command fails and no --append mode used, contents of the original file will be lost
(overwritten by empty data). To prevent this, use a temporary file and then rename it:

```bash

@ Writing some files
  - output_to_file list.tmp ls /home
  - mv list.tmp list.txt
```

##### See also

[output_to_var](output_to_var)  
