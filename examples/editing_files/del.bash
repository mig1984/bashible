#!/usr/local/bin/bashible

use edit

- run generate_sshd_config.bash 23 127.0.0.1

@ Edit config
  - comment_lines_matching 'UseDNS' sshd_config
  - comment_lines_matching 'X11Forwarding no' sshd_config

@ Removing lines
  - remove_lines_matching "This will be" sshd_config

@ Replacing whole lines
  - replace_lines_matching 'AllowTcpForwarding' 'AllowTcpForwarding no' sshd_config