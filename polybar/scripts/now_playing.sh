#!/bin/sh

STATUS=$(playerctl -p spotify status 2> /dev/null)

if [ "$STATUS" = "Playing" ]; then
    echo " $(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)"
elif [ "$STATUS" = "Paused" ]; then
    echo " $(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)"
else
    echo ""
fi
