#!/usr/bin/env bash

info "installing git"
apt install --q git -y > /dev/null
info "git ready"

info "configure git"
git config --global user.name "Mathias Dollenbacher" > /dev/null
git config --global user.email "hello@mdollenbacher.net" > /dev/null
info "git config ready"
