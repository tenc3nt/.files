#!/bin/sh

# kill wm session with Ctrl + Alt + Backspace
# setxkbmap -option terminate:ctrl_alt_bksp

if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS";
then
	eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

#rfkill unblock all &
$HOME/.screenlayout/multihead.sh &
#/usr/bin/pipewire &
#/usr/bin/pipewire-pulse &
#/usr/bin/pipewire-media-session &
xrdb -merge ~/.Xresources
#wal
# feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
$HOME/.config/wpg/wp_init.sh
#hsetroot -solid "#38c7c7"
#xsetroot -bitmap ~/Pictures/bitmap-walls/bw-bgnd/rose_vines.xbm -bg "#010101" -fg "#bb8888"
xset b off
xset r rate 250 25
#nitrogen --restore &
#bash ~/.config/polybar/launch3.sh &
xsetroot -cursor_name left_ptr
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# startup programs, the & means background it
dunst & # notification daemon
#sxhkd & # keyboard shortcut daemon
xautolock -detectsleep -time 10 -locker "glock" \
-notify 30 \
-notifier "notify-send -u critical -t 10000 -- 'locking screen in 30 seconds'" &
picom &
cky
mpd &
# start cwm
exec cwm

