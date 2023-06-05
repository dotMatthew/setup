#!/usr/bin/env bash

info "writing fish config"
cat <<EOF > ~/.config/fish/config.fish
alias dcud="docker compose up -d"
alias dcu="docker compose up"
alias dcdv="docker compose down -v"
alias dcd="docker compose down"
alias dcp="docker compose ps"
alias dclf="docker compose logs -f"
alias dcl="docker compose logs"
alias dps="docker ps"
alias tf="terraform"
EOF
info "fish config ready"
