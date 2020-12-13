#!/bin/bash

_DEL=` printf '\x1' `        # regexp delimiter

add_line() {
  local line=$1
  local path=$2
  quiet head -n 1 "$path" || { print_error "add_line: can't read file '$path'"; return 1; }
  if ! quiet grep -Fx "$line" "$path"; then
    echo "$line" >> "$path" || { print_error "add_line: can't write to file '$path'"; return 1; }
  else
    print_info "already"
  fi
}

append_line() {
  local line=$1
  local path=$2
  quiet tail -n 1 "$path" || { print_error "append_line: can't read file '$path'"; return 1; }
  if test "` tail -n 1 "$path" `" != "$line" ; then
    echo "$line" >> "$path" || { print_error "append_line: can't write to file '$path'"; return 1; }
  else 
    print_info "already"
  fi
}

comment_lines_matching() {
  local match=$1
  local path=$2
  test ${#match} -eq 0 && { print_error "comment_line_matching: empty regexp is not allowed!"; return 1; }
  test ! -f "$path" && { print_error "comment_line_matching: file '$path' not found"; return 1; }
  sed -i -r 's'${_DEL}'^([^#]*'"$match"'.*)$'${_DEL}'#\1'${_DEL} "$path"
}

prepend_line() {
  local line=$1
  local path=$2
  quiet head -n 1 "$path" || { print_error "prepend_line: can't read file '$path'"; return 1; }
  if test "` head -n 1 "$path" `" != "$line" ; then
    cat - "$path" <<< "$line" > "$path.tmp"
    mv "$path.tmp" "$path"
    #sed -i "1i \\ $line" "$path" || { print_error "prepend_line: can't edit file '$path'"; return 1; }
  else
    print_info "already"
  fi
}

remove_lines_matching() {
  local match=$1
  local path=$2
  test ${#match} -eq 0 && { print_error "remove_line_matching: empty regexp is not allowed!"; return 1; }
  test ! -f "$path" && { print_error "remove_line_matching: file '$path' not found"; return 1; }
  sed -i "\\${_DEL}$match${_DEL}d" "$path" || { print_error "remove_line_matching: can't edit file '$path'"; return 1; }
}

replace_matching() {
  local match=$1
  local replace=$2
  local path=$3
  test ${#match} -eq 0 && { print_error "replace_matching: empty regexp is not allowed!"; return 1; }
  test ! -f "$path" && { print_error "replace_matching: file '$path' not found"; return 1; }
  sed -i -r "s${_DEL}$match${_DEL}$replace${_DEL}g" "$path"
}

replace_lines_matching() {
  local match=$1
  local replace=$2
  local path=$3
  test ${#match} -eq 0 && { print_error "replace_line_matching: empty regexp is not allowed!"; return 1; }
  test ! -f "$path" && { print_error "replace_line_matching: file '$path' not found"; return 1; }
  sed -i -r "s${_DEL}.*$match.*${_DEL}$replace${_DEL}g" "$path"
}

uncomment_lines_matching() {
  local match=$1
  local path=$2
  test ${#match} -eq 0 && { print_error "uncomment_line_matching: empty regexp is not allowed!"; return 1; }
  test ! -f "$path" && { print_error "uncomment_line_matching: file '$path' not found"; return 1; }
  sed -i -r 's'${_DEL}'^ *#(.*'"$match"'.*)$'${_DEL}'\1'${_DEL} "$path"
}
