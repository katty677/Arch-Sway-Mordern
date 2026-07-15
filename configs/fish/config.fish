# ==========================================
# Arch Sway Modern Fish Configuration
# ==========================================


# Disable greeting

set -g fish_greeting



# Environment

set -gx EDITOR nvim
set -gx VISUAL nvim



# PATH additions

fish_add_path ~/.local/bin



# Initialize tools


# Starship

starship init fish | source



# Zoxide

zoxide init fish | source



# FZF

fzf --fish | source



# Load aliases

source ~/.config/fish/aliases.fish



# Fastfetch on terminal start

if status is-interactive
    fastfetch
end