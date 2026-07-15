# =====================================
# File Management
# =====================================


alias ls="eza --icons"
alias ll="eza -lah --icons"
alias la="eza -a --icons"


alias cat="bat"



# Navigation

alias ..="cd .."
alias ...="cd ../.."



# System

alias update="sudo pacman -Syu"

alias cleanup="sudo pacman -Rns (pacman -Qtdq)"



# Network

alias ports="ss -tulnp"

alias myip="curl ifconfig.me"



# Security tools

alias scan="nmap"

alias listen="sudo tcpdump -i any"



# Git

alias gs="git status"

alias ga="git add"

alias gc="git commit"

alias gp="git push"



# Docker

alias dps="docker ps"

alias dcu="docker compose up"



# Useful

alias c="clear"

alias reload="source ~/.config/fish/config.fish"