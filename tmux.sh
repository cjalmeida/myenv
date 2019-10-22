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
