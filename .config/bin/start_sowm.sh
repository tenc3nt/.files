#!/bin/sh

# kill wm session with Ctrl + Alt + Backspace
setxkbmap -option terminate:ctrl_alt_bksp

# dual monitor
xrandr --output eDP1 --auto --output VGA1 --auto --right-of eDP1
xset +fp /usr/share/fonts/local
xset fp rehash

# reload pywall colors
wal -R
xrdb -merge $HOME/.Xresources
xset b off
xset r rate 250 25
# xsetroot -cursor_name left_ptr

# startup programs, the & means background it
dunst & # notification daemon
sxhkd & # keyboard shortcut daemon
feh --bg-fill "$(< "${HOME}/.cache/wal/wal")" &
xautolock -time 10 -locker "slock" & 
picom &
#tint2 &
$HOME/.config/polybar/launch2.sh &
#nm-applet &
blueberry-tray &
xsettings & disown
/usr/libexec/polkit-gnome-authentication-agent-1 &

# start sowm
# exec dbus-launch /home/x/bin/sowm
# I have pulseaudio installed and dbus is a strict dependency!
# you can replace the above line with just
exec dbus-run-session /home/x/bin/sowm 
