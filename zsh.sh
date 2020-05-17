set -e
sudo apt install -y zsh
sudo chsh -s /usr/bin/zsh $USER
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
sed -i -E 's/ZSH_THEME=".+?"/ZSH_THEME="spaceship"/g' ~/.zshrc
sed -i -E 's/^plugins=\(.+?\)/plugins=(git kubectl tmux)/g' ~/.zshrc

echo 'export SPACESHIP_KUBECTL_SHOW=true' >> ~/.zshrc
