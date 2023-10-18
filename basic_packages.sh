#!/usr/bin/env bash

# This script install some basic packages and stuff that doesn't need big configuration
# or have no place else to be installed :kekw:
# 
# We pipe only the "good" things into into /dev/null. This is not a good error handling but
# atleast the user will get some information if shit goes crazy
# This will probably change when i also change the language of this scripts from bash to something
# more extendable
info "updating system"
apt update -qq && apt upgrade -y -qq > /dev/null

info "installing some basic packages..."
apt install -qq curl git apt-transport-https ripgrep vim snapd btop bat tmux -y > /dev/null
info "basic packages ready"

info "linking batcat to bat alias"
ln -s /usr/bin/batcat ~/.local/bin/bat
info "bat ready"

info "installing idea ultimate"
snap install intellij-idea-ultimate --classic > /dev/null
info "intellij ready"

info "installing bitwarden password manager"
snap install bitwarden > /dev/null
info "bitwarden ready"
