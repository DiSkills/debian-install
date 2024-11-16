#!/bin/env bash

# Installing zsh
echo "Installing zsh..."
sudo apt install -y zsh
chsh -s $(which zsh)
echo "[+] Zsh has been installed successfully"

# Installing oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "[+] oh-my-zsh has been installed successfully"
