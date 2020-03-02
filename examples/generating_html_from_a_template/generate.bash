#!/usr/local/bin/bashible

use template

# this variable is used to include either foo.js or bar.js in the HTML head (see parts/head.tpl template)
FOO_OR_BAR=bar  #foo

@ Building the HTML from a template
  - output_to index.html template index.tpl
