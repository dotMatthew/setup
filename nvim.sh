#!/usr/bin/env bash

info "install nvim"
snap install nvim --classic > /dev/null

# pipe everything into /dev/null because we dont care
# if this directory exists or needs to be created
info "creating .config directory if not exists"
mkdir .config &>/dev/null 

info "cloning kickstart.nvim project into .config directory"
git clone --quiet https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim > /dev/null

info "nvim ready"
