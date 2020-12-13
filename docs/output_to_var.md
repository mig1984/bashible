##### output_to_var VARIABLE OPTIONS COMMAND ARGS ...

Store output of a command in a variable. 

Options:

-1|--stdout
-2|--stderr

By default, only stdout is stored.

```bash

@ Setting some variables
  # store only stdout
  - output_to_var tempdirs find -type d /tmp
  # store both stdout and stderr
  - output_to_var homedirs -1 -2 ignore_errors find -type d /home
  # store only stderr
  - output_to_var error_message -2 ignore_errors ls /asdfasdfasdf
```

You can use this to store and check presence of an argument

```bash

@ Setting some variables
  - output_to_var arg1 not is_empty_output echo $1
```

##### See also

[output_to_file](output_to_file)  
[is_empty_output](is_empty_output.md)  