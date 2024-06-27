#!/bin/bash

# neovim
sudo apt install -y neovim

# vscode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code # or code-insiders

# vscode extensions
#johnstoncode.svn-scm
#medo64.render-crlf
#moshfeu.compare-folders
#ms-python.python
#ms-python.vscode-pylance
#ms-vscode-remote.remote-ssh
#ms-vscode-remote.remote-ssh-edit
##ms-vscode.cpptools
#ms-vscode.remote-explorer
#redhat.vscode-xml
##rust-lang.rust-analyzer
##TabbyML.vscode-tabby
##vscodevim.vim

# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# eza
sudo apt update
sudo apt install -y gpg

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

# bat
sudo apt install -y bat

# fd-find
sudo apt install -y fd-find

# ripgrep
sudo apt install -y ripgrep

# zoxide
sudo apt install -y zoxide

# fzf
sudo apt install -y fzf

# qtcreator

# i3
sudo apt install -y i3

# clang-format

# git-svn

# cargo
curl https://sh.rustup.rs -sSf | sh

# gitui

# docker

# stow
sudo apt install -y stow

# build-essential
sudo apt install -y build-essential

sudo apt install -y tmux
