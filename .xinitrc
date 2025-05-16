#!/bin/sh

xrandr --output VGA-1 --mode 1366x768
# feh --bg-scale /home/bored/.config/wallpapers/fav/anime_white.jpg
# feh --bg-scale /home/bored/.config/wallpapers/fav/japanese.png
feh --bg-scale /home/bored/.config/wallpapers/title/gruvbox_country_side.png
# feh --bg-scale /home/bored/.config/wallpapers/fav/aes.jpg
# wal -R &

# Add this to your .xinitrc or whatever file starts programs on startup.
# wal -i "$(< "${HOME}/.cache/wal/wal")"


/usr/bin/mocp-scrobbler.py -d &
mocp -S 

# picom -b --experimental-backends --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffnes 150 &
# picom -b --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffnes 150 &
# picom --experimental-backend &
picom &

dwmblocks &
exec slstatus &
dunst &
discord --start-minimized &
blueman &
blueman-applet &
nm-applet &
# thunar --daemon
exec dwm
