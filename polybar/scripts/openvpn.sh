#!/bin/sh

SERVICE="openvpn"
if pgrep -x "$SERVICE" &> /dev/null; then
	echo "%{F#66CD00}%{F-}"
else
	echo ""
fi
