#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
echo "alias ls='ls --color'" >> ~/.bashrc
echo "alias vi=vim" >> ~/.bashrc
sed -i -E 's/OSH_THEME=".+?"/OSH_THEME="powerline-multiline"/g' ~/.bashrc
THEME_FILE=~/.oh-my-bash/themes/powerline-multiline/powerline-multiline.theme.sh
sed -i -E 's/CWD_THEME_PROMPT_COLOR=.*/CWD_THEME_PROMPT_COLOR=24/g' $THEME_FILE
sed -i -E 's/CLOCK_THEME_PROMPT_COLOR=.*/CLOCK_THEME_PROMPT_COLOR=24/g' $THEME_FILE
