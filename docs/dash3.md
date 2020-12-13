#### - && (conditional loop)

Sometimes you need to use a loop. But the loop should be executed only if a condition matches.
In this case, you have to use "-&&" or "- &&"

```bash

DBS='mysql pgsql'

@ Installing databases
  when is not empty_var DBS
  - && for db in $DBS; do yum_install $db; done
```
##### See also

[- COMMAND](dash1.md)  
[- VARIABLE = VALUE](dash2.md)  
[and_when](and_when.md)  
[or_when](or_when.md)  
[@](@.md)  
[ignore_errors](ignore_errors.md)  