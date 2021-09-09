#!/bin/sh
# Make Thunar always launched with DBUS
# Without this, mounting, unmounting, trash, etc won't work in Thunar
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS";
then
	eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi


exec cwm
