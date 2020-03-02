#### orig_dir

Output path to the directory from which the script has been executed. (Bashible automatically switches to the script's directory on start.)

To switch into it, do

```bash
#!/usr/local/bin/bashible

echo I am in the script's directory now

@ This is a first block
  - cd `orig_dir`
  - echo I am in the original directory now

@ Another block
  - echo back in the actual base_dir (the script's directory again)
  
```

##### See also

[base_dir](base_dir.md)  
[reset_base_dir](reset_base_dir.md)  
