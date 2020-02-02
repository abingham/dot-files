# set laptop display resolution
xrandr --output eDP-1 --mode 1920x1200

# put the thunderbolt display to the left of the laptop
xrandr --output DP-2 --left-of eDP-1
