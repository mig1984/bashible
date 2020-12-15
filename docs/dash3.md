#### - && (conditional loop)

Sometimes you need to use a loop. But the loop should be executed only if conditions of a block matche.

To do so, use `- &&` magic:

```bash

DBS='mysql pgsql'

@ Installing databases
  when is not empty_var DBS
  - && for db in $DBS; do yum_install $db; done
```

Of course, the for loop will work also without the `- &&`, but then it will execute always, even if the block conditions wouldn't match.

##### See also

[- COMMAND](dash1.md)  
[- VARIABLE = VALUE](dash2.md)  
[and_when](and_when.md)  
[or_when](or_when.md)  
[@](@.md)  
[ignore_errors](ignore_errors.md)  