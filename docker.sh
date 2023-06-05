#!/usr/bin/env bash

info "downloading docker" 
curl https://get.docker.com | bash > /dev/null
info "docker ready"

info "add user to docker group. this require a complete session restart to work"
usermod -aG docker $USER 
info "docker user ready"
