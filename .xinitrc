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

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

xrdb ~/.Xresources

xset r rate 200 20
xset s off -dpms
xset s off
xinput --set-prop 8 'Device Accel Constant Deceleration' 5.5
xset m default
setxkbmap -option caps:escape
setxkbmap -option escape:caps
sh ~/.fehbg

# Disable PC Speaker
xset -b

# Set clipboards to synchronize
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

#hhpc &
sxhkd &
exec bspwm

