#!/bin/bash
 
# Load resources
 
xrdb -merge .Xresources
 
# Set up an icon tray
 
 killall trayer
trayer --edge top --align right --SetDockType true --SetPartialStrut true \
 --expand true --width 5 --transparent true --tint 0x999999 --height 13 &
 
# Fire up apps

killall nm-applet
if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi

hsetroot -solid '#000000'
xsetroot -cursor_name left_ptr

killall compton
compton -b &

exec $HOME/.cabal/bin/xmonad
