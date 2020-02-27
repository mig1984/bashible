#!/bin/bash

timeout() {
  local time=$1; shift
  ( "$@" ) & pid=$!
  ( sleep $time && kill -HUP $pid ) 2>/dev/null & killer=$!
  if ! wait $pid; then
    print_error "timeout expired"
    return 1
  else
    pkill -HUP -P $killer
    wait $killer
    return 0
  fi
}
