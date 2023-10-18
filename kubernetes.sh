#!/usr/bin/env bash

info "install k3s"
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server \
	--disable-service-lb \
	--disable traefik" sh - > /dev/null
info "kubernetes ready"

info "install helm cli"
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash > /dev/null
info "helm ready"

info "installing kotana lens" # Todo replace with openlens
snap install kontena-lens --classic > /dev/null
info "lens ready"
