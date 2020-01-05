apt-get update
# install curl, git, jq
apt-get install curl git jq vim -y

# install azure cli
curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# install helm
curl -L https://git.io/get_helm.sh | bash

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin

# cleanup apt
rm -rf /var/lib/apt/lists/*

# make boot-strap.sh executable
chmod +x boot-strap.sh
