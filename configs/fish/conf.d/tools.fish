# Better history

set -U fish_history main


# Enable vi mode

fish_vi_key_bindings



# Directory colors

if command -q dircolors
    set -gx LS_COLORS (dircolors -b | sed -n "s/^LS_COLORS='\(.*\)';\$/\1/p")
end