Manjaro setup
=============

Install the following:
```
# vim + neovim
sudo pacman -S vim
sudo pacman -S neovim

# set zsh as default shell
sudo chsh -s $(which zsh) 

# zsh plugins
# OhMyZsh
curl -Lo install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh

# ZPlug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# ZshAutocomplete
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ZshSyntaxHighlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# ZshSpaceshipTheme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# ZshAutoEnv
git clone https://github.com/Tarrasch/zsh-autoenv "~/.zplug/plugins/zsh-autoenv"

# VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

Setup Symlinks:
```
# Zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc

# Nvim
ln -s ~/.dotfiles/nvim ~/nvim

# VSCode
ln -s ~/.dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
```

Applications:
```
# Git
sudo pacman -S git

# Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# NodeJS 
yay -S nvm
nvm install v13.1.0
yay -S yarn

# VSCode
sudo pacman -S code

# Gitkraken
sudo snap install --devmode gitkraken

# OpenVPN
pacman -S networkmanager-openvpn
systemctl restart networkmanager

# Flash Player
sudo pacman -Syu flashplugin 

# Android Tool
sudo pacman -S android-tools
yay -S android-studio

# JVM
sudo pacman -S jdk8-openjdk jre8-openjdk java-openjfx icedtea-web 


# Gimp 
```
