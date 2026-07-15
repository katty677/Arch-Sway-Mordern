#!/usr/bin/env bash

set -e


echo "[+] Setting Fish shell"


mkdir -p ~/.config/fish


cp -r configs/fish/* ~/.config/fish/


mkdir -p ~/.config/starship


cp configs/starship/starship.toml \
~/.config/starship/starship.toml



# Change shell

if ! grep -q fish /etc/shells; then

    echo "$(which fish)" | sudo tee -a /etc/shells

fi


chsh -s $(which fish)
