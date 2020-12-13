#### and when COMMAND

Represents a condition AND. Should be used right after @ block.

##### Example

```bash
@ Installing nginx
  when not which nginx
  - yum_install nginx
```

('when' is an alias for 'and when')

With multiple conditions:

```bash
@ Probably on linux system
  when test -d /sys
  and test -d /dev
  and test -d /proc
  - do foo
  - do bar
```

You can write 'and when test...' or just 'and test...'

##### See also

[and when](and_when.md)  
[or when](and_when.md)  
[@](@.md)  
