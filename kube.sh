for _rc in ~/.bashrc ~/.zshrc; do
    echo "source <(kubectl completion bash)" >> $_rc
    echo "alias k=kubectl" >> $_rc
    echo "complete -F __start_kubectl k" >> $_rc
done