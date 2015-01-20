# set up X font path to support terminus
xset +fp /usr/share/fonts/local
xset fp rehash

pulseaudio --start &
clipit -d &
xscreensaver &
xss-lock -- xscreensaver-command -lock &

exec i3
