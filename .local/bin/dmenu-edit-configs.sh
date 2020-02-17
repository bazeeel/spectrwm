#!/bin/bash



# Dmenu script for editing some of my more frequently edited config files.


declare options=("awesome
bash
bspwm
dwm
herbstluftwm
i3
polybar
qtile
st
sxhkd
vim
xmobar
xmonad
zsh
quit")

choice=$(echo -e "${options[@]}" | rofi -dmenu -i -no-custom -p 'Edit a config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	awesome)
		choice="$HOME/.config/awesome/rc.lua"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	bspwm)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
	dwm)
		choice="$HOME/dwm/config.h"
	;;
	herbstluftwm)
		choice="$HOME/.config/herbstluftwm/autostart"
	;;
	i3)
		choice="$HOME/.config/i3/config"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	qtile)
		choice="$HOME/.config/qtile/config.py"
	;;
	st)
		choice="$HOME/st/config.h"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
	xmobar)
		choice="$HOME/.config/xmobar/xmobarrc2"
	;;
	xmonad)
		choice="$HOME/.xmonad/xmonad.hs"
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	*)
		exit 1
	;;
esac
subl3 -c "$choice"
