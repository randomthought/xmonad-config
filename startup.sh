#!/bin/sh

# Stand lone tray
if [ -z "$(pgrep stalonetray)" ] ; then
    stalonetray --window-type desktop \
                --background '#282c34' \
                --window-strut none \
                --icon-gravity NE \
                --icon-size=27 \
                --geometry 6x1-1+0 &
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
