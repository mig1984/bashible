template() {
  local path=$1
  local res
  test -f "$path" || fail "template does not exist"
  local orig_nav=${_BLE_NAV}
  (
    export _BLE_NAV="${_BLE_NAV} (in $path)"
    exec 3>&1
    set -u
    stderr=` eval "
cat <<END_OF_BLEMPLATE
$(< "${path}" )
END_OF_BLEMPLATE" <&0 2>&1 1>&3
`
    test "${#stderr}" -ne 0 && { echo $stderr>&2; return 1; }
    return 0
  )
}
