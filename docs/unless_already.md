#### unless_already COMMAND ARGS ...

Execute the command unless already executed during the run of a bashible script(s). Internally it writes the command including it's arguments and working directory to a file,
which has been created by the topmost parent. Then checks the file and does not run the command if it matches.

Example:

```bash

 - unless_already systemctl reload nginx

```
