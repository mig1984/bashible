#!/usr/local/bin/bashible

use template

@ Setting up and checking variables needed by a template
  - fill_var PORT not empty echo $1
  - fill_var LISTEN not empty echo $2

@ Generating sshd_config from a template unless already
  - when not test -f sshd_config
  - output_to sshd_config template sshd_config.tpl
