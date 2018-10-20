#!/bin/sh

# set up X font path to support terminus
xset +fp /usr/share/fonts/local
xset fp rehash

clipit -d &
export XSECURELOCK_SAVER=saver_xscreensaver
# disable system bell
xset -b
# dim after 10 mins, lock after 30 more seconds
xset s 600 30
# monitor sleep after 15 minutes of idleness
xset dpms 900
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &
dunst &
/home/wilsoniya/bin/capsmap

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

pulseaudio --start &
i3
