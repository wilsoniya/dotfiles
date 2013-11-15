# set up X font path to support terminus
xset +fp /usr/share/fonts/local
xset fp rehash

pulseaudio --start
exec i3
