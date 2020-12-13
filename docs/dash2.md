#### - VARIABLE = VALUE

Conditionally set a variable to a value.

##### Example:

```bash
@ Checking for php presence
  when which php
  or which php7.2
  or which php6.4
  - present = 1

echo $present  # => 1

```

##### See also

[- COMMAND](dash1.md)  
[and_when](and_when.md)  
[or_when](or_when.md)  
[@](@.md)  
[ignore_errors](ignore_errors.md)  
