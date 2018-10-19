#!/bin/sh

# set up X font path to support terminus
xset +fp /usr/share/fonts/local
xset fp rehash

pulseaudio --start
clipit -d &
#xscreensaver &
#xss-lock -- xscreensaver-command -lock &
export XSECURELOCK_SAVER=saver_xscreensaver
xset s 300 5
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &
dunst &
/home/wilsoniya/bin/capsmap

# disable system bell
xset -b

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

i3
