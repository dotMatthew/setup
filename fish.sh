#!/usr/bin/env bash

info "adding fish repository"
sudo apt-add-repository ppa:fish-shell/release-3 > /dev/null
info "fish repository ready"

info "installing fish"
sudo apt update && sudo apt install -qq fish -y > /dev/null
info "fish ready"

info "installing omf (oh my fish)"
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
info "omf ready"

info "install fish theme"
omf install agnoster > /dev/null
info "agnoster ready"

info "set agnoster as default theme"
omf theme agnoster > /dev/null
info "agnoster main theme ready"

info "installing powerfonts"
sudo apt-get install -qq fonts-powerline -y > /dev/null
info "powerfonts installed"

info "setting fish as default shell"
chsh -s /usr/bin/fish
info "fish shell ready"
