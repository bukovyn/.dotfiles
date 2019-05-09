#!/bin/bash
# current volume

amixer get Master | grep -m 1 % | awk '{print $5}'| sed -e 's/\[//' -e 's/\]//'
