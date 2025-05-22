#!/bin/sh
SRCDIR="$(realpath $(dirname $0))"
DESTDIR="${DESTDIR:=/usr/local/bin}"

install -D -o root -g root -m 755 \
        "${SRCDIR}/xfce4-xsecurelock.sh" \
        "${DESTDIR}/xfce4-xsecurelock"

if [ -n "$SUDO_USER" ]; then
    sudo -u $SUDO_USER xfconf-query \
         --channel xfce4-session \
         --property /general/LockCommand \
         --set "xfce4-xsecurelock"
    if [ ! $? = 0 ]; then
        echo "Could not set XFCE lock command. Do you have dbus-x11?"
    fi
fi
