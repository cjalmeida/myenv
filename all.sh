#!/bin/bash

# install oh-my-bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
echo "alias ls='ls --color'" >> ~/.bashrc
echo "alias vi=vim" >> ~/.bashrc
echo 'export PATH="~/.local/bin:$PATH"' >> ~/.bashrc
sed -i -E 's/OSH_THEME=".+?"/OSH_THEME="envy"/g' ~/.bashrc
THEME_FILE=~/.oh-my-bash/themes/powerline-multiline/powerline-multiline.theme.sh

#!/bin/bash

# setup tmux with ssh forwarding
cat <<EOF > ~/.tmux.conf
set -g update-environment -r
set-environment -g 'SSH_AUTH_SOCK' ~/.ssh/ssh_auth_sock
set-option -g allow-rename off
EOF

cat <<EOF > ~/.ssh/rc 
if [ -S "\$SSH_AUTH_SOCK" ]; then
    ln -sf \$SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock 
fi
EOF
chmod 600 ~/.ssh/rc
# setup python breakpoints
echo 'export PYTHONBREAKPOINT=ipdb.set_trace' >> $HOME/.bashrc

#!/bin/bash
git config --global core.editor "vim"
git config --global user.name 'Cloves Almeida'
git config --global user.email 'almeida.cloves@bcg.com'
#!/bin/bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
echo "source <(kubectl completion bash)" >> ~/.bashrc
alias k=kubectl
complete -F __start_kubectl k
