#!/bin/bash
killall -q polybar
(sleep 2; polybar primary -r) &
