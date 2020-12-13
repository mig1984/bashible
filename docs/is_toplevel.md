##### is_toplevel

Returns true if the current script is the top (not a child sub-script).

In the following example, the script will halt if it is called directly;
it has to be called from within another bashible script.

```bash
@ Basic checks
  - not is_toplevel
```

