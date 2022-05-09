#!/bin/sh

if [ "$1" = "eth0" ]; then
    case "$2" in
        up)
            nmcli radio wifi off
            ;;
        down)
            nmcli radio wifi on
            ;;
    esac
elif [ "$(nmcli -g GENERAL.STATE device show eth0)" = "20 (unavailable)" ]; then
    nmcli radio wifi on
fi
