#!/usr/bin/env bash
set -euo pipefail

# apt - install curl, git, jq, vim
apt-get update
apt-get install curl git jq vim -y

# install azure cli
curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# install helm
curl -L https://git.io/get_helm.sh | bash

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin

# apt - cleanup
rm -rf /var/lib/apt/lists/*
