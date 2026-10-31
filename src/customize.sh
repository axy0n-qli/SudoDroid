#!/system/bin/sh

SKIPUNZIP=1

ui_print "- Installing SudoDroid"

ui_print "- Extract zip"
unzip -o "$ZIPFILE" -d "$TMPDIR/.sudodroid"

ui_print "- Find sudo"
TARGETS=$TMPDIR/.sudodroid/file/sudo

ui_print "- Coping sudo"

DEST=/system/bin
mkdir -p $(dirname "$DEST")
    cp -f "$TARGETS" "$DEST"
    set_perm "$DEST/sudo" 0 0 0755 "u:object_r:system_file:s0"
done

ui_print "- Extract module files"
unzip -o "$ZIPFILE" "module.prop" -d "$MODPATH"
