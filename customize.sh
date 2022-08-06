# !/system/bin/sh
# 4nP App By Four Engineering Project (@four_engineering_project telegram)
DEBUG=true
ui_print ""
ui_print "    __________________ "
ui_print "   / / / / / / / / / / "
ui_print "  / / / / / / / / / /  "
ui_print " / / / / / / / / / /   "
ui_print "/_/_/_/_/_/_/_/_/_/    "
ui_print " _  _         ____     "
ui_print "| || |  _ __ |  _ \    "
ui_print "| || |_| '_ \| |_) |   "
ui_print "|__   _| | | |  __/    "
ui_print "   |_| |_| |_|_|       "
ui_print "    ____________________ "
ui_print "   / / / / / / / / / / / "
ui_print "  / / / / / / / / / / / "
ui_print " / / / / / / / / / / / "
ui_print "/_/_/_/_/_/_/_/_/_/_/ "
sleep 2
ui_print "Thanks For Source And Help pedrozzz (pedrozzz0 @ GitHub)"
ui_print ""
sleep 3
ui_print "KTweak by Draco (tytydraco @ GitHub)"
ui_print ""
sleep 1
ui_print ""
sleep 1
ui_print ""

set_permissions() {
  set_perm_recursive $MODPATH/system/bin root root 0777 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh

ui_print ""
ui_print "[*] Fstrim partitions..."
fstrim -v /system
fstrim -v /data
fstrim -v /cache
ui_print ""
ui_print "[*] Installing 4nP Tweaks app..."
pm install $MODPATH/4nPTweaks.apk
sleep 1
ui_print ""
ui_print "[*] Installing 4nP Toast app..."
pm install $MODPATH/4nPToast.apk
ui_print ""
ui_print "[*] Cleaning stuff..."
if [[ -d "/data/adb/modules/KTKSR" ]]; then
rm -rf /data/adb/modules/KTKSR
fi
rm -rf $MODPATH/*.apk
sleep 1
ui_print ""
ui_print "[*] Logs are stored in your internal storage/FEP"
sleep 1
ui_print ""
ui_print "[*] Please reboot to the changes be applied."
sleep 1
ui_print ""