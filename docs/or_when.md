#### and when COMMAND

Represents a condition OR. Should be used after @ block.

##### Example

```bash
@ Probably on linux system
  when test -d /sys
  or test -d /dev
  or test -d /proc
  - do foo
  - do bar
```

You can write 'or when test...' or just 'or test...'

##### See also

[and when](and_when.md)  
[or when](and_when.md)  
[@](@.md)  
