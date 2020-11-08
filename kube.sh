#!/bin/bash

set -e

get_kubectl=`which kubectl &> /dev/null || echo 1`
url="https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"


if [[ "$get_kubectl" == "1" ]]; then
    pushd /usr/local/bin
    sudo curl -LO $url
    sudo chmod +x /usr/local/bin
    popd
fi

for _rc in ~/.bashrc ~/.zshrc; do
    echo "autoload -U +X compinit && compinit" >> $_rc
    echo "source <(kubectl completion zsh)" >> $_rc
    echo "alias k=kubectl" >> $_rc
    echo "complete -F __start_kubectl k" >> $_rc
done