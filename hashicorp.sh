#!/usr/bin/env bash

info "adding hashicorp gpg key"
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

info "adding hashicorp repository"
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list > /dev/null
info "hashicorp repository ready"

info "installing terraform"
apt update -qq && apt install -qq terraform -y > /dev/null
info "terraform ready"
