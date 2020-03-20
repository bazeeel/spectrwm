#!/usr/bin/env sh

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &

#exec bspwm

exec spectrwm

#exec dwm

#exec xmonad

#exec herbstluftwm --locked

#exec berry
