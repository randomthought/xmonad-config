#!/bin/sh


# polybar
if [ -z "$(pgrep polybar)" ] ;
then
    if type "xrandr"; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar -r desktop &
      done
    else
      polybar -r desktop &
    fi
fi

# Power manager
if [ -z "$(pgrep xfce4-power-manager)" ] ; then
    xfce4-power-manager &
fi


Redshift
if [ -z "$(pgrep redshiftgui)" ] ; then
    redshiftgui &
fi

# Autolock
# if [ -z "$(pgrep xautolock)" ] ; then
    # xautolock -time 1 -locker "if ! grep 'RUNNING' /proc/asound/card*/pcm*/sub*/status;then xscreensaver-command -lock; else echo 'Sound on'; fi"
# fi

# Wallpaper
if [ -z "$(pgrep nitrogen)" ] ; then
    nitrogen --restore &
fi

# compton
if [ -z "$(pgrep compton)" ] ; then
    compton -b &
fi

# Network Applet
if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet &
fi

Google Drive
if [ -z "$(pgrep insync)" ] ; then
    insync start &
fi

# xbindkeys
xbindkeys
