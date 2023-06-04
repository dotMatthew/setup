#!/bin/bash

# This file is the init point of the setup
# This file will load the additional scripts

info() {
  message=$@
  echo "info - $message" 
}

export -f info

source ./basic_packages.sh
source ./git.sh
source ./docker.sh
source ./kubernetes.sh
source ./hashicorp.sh
source ./nvim.sh
