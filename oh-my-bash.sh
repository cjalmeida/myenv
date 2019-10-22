#!/bin/bash

# install oh-my-bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
echo "alias ls='ls --color'" >> ~/.bashrc
echo "alias vi=vim" >> ~/.bashrc
echo 'export PATH="~/.local/bin:$PATH"' >> ~/.bashrc
sed -i -E 's/OSH_THEME=".+?"/OSH_THEME="powerline-multiline"/g' ~/.bashrc
THEME_FILE=~/.oh-my-bash/themes/powerline-multiline/powerline-multiline.theme.sh

