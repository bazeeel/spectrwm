#!/bin/bash
sleeptime=0.3
while true; do
    ~/.local/bin/statusbar.sh
sleep $sleeptime; done | dzen2 -e - -h '24' -w '1920' -bg '#143834' -ta l
