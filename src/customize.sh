#!/system/bin/sh

SKIPUNZIP=1

ui_print "- Installing SudoDroid"

ui_print "- Extract files"
unzip -o "$ZIPFILE" "module.prop" -d "$MODPATH"
unzip -o "$ZIPFILE" "file/sudo" -d "$TMPDIR"

ui_print "- Create sudo overlay"
mkdir -p "$MODPATH/system/bin"
cp -f "$TMPDIR/file/sudo" "$MODPATH/system/bin/sudo"

ui_print "- Fixing permissions"
set_perm "$MODPATH/system/bin/sudo" 0 2000 0755 "u:object_r:system_file:s0"