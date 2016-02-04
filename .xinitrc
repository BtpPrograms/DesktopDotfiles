#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Loads terminal colors
xrdb ~/.Xresources

# Disable pc speaker beeing
xset -b

# Sets key repeat rate
xset r rate 200 20

# Binds caps lock to escape
setxkbmap -option caps:escape

# Runs background image script
sh ~/.fehbg

# Starts bspwm
sxhkd &
exec bspwm

