#!/bin/sh

# System tray
if [ -z "$(pgrep trayer)" ] ; then
    trayer --edge top \
           --align right \
           --widthtype percent \
           --height 22 \
           --alpha 0 \
           --transparent true \
           --width 5 \
           --tint 0x282c34 &
fi
# Power manager
if [ -z "$(pgrep xfce4-power-manager)" ] ; then
    xfce4-power-manager &
fi
# Redshift
if [ -z "$(pgrep redshift)" ] ; then
    redshift-gtk &
fi
# Autolock
# if [ -z "$(pgrep xautolock)" ] ; then
    # xautolock -time 1 -locker "if ! grep 'RUNNING' /proc/asound/card*/pcm*/sub*/status;then xscreensaver-command -lock; else echo 'Sound on'; fi"
# fi
# Wallpaper
if [ -z "$(pgrep nitrogen)" ] ; then
    nitrogen --restore &
fi
# Screensaver
if [ -z "$(pgrep xscreensaver)" ] ; then
    xscreensaver -no-splash &
fi
# Xcompozer
if [ -z "$(pgrep compton)" ] ; then
    compton -b &
fi
# Network Applet
if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet &
fi
# Google Drive
if [ -z "$(pgrep insync)" ] ; then
    insync start &
fi
