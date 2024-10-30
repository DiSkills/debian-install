#!/bin/bash

NVIM_CONFIG_DIR=$HOME/.config/nvim
LSP='bash-language-server clangd dockerfile-language-server python-lsp-server'
TS='bash c cpp dockerfile lua make python vim'

mkdir -p $NVIM_CONFIG_DIR

# Installing nvim
echo "Installing nvim..."
curl -LO https://github.com/neovim/neovim-releases/releases/download/v0.10.2/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
rm nvim-linux64.deb
echo "[+] Nvim has been installed successfully"

# Installing vim-plug
echo "Installing vim-plug..."
bash -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "[+] vim-plug has been installed successfully"

# Copying configuration
cp -r nvim-config/* $NVIM_CONFIG_DIR

# Installing plugins
echo "Installing plugins..."
nvim -c 'PlugInstall' -c "MasonInstall $LSP" -c "TSInstall $TS" -c 'qa'
echo "[+] Plugins have been installed successfully"

echo "[+++] Installation is completed"
