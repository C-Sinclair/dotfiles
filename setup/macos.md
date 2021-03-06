MacOS setup
===========

Install the following: 
```shell
# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Nvim
brew install nvim

# OhMyZsh
curl -Lo install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh

# ZPlug
brew install zplug

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

### Setting up SymLinks
```
# Zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc

# Nvim
ln -s ~/.dotfiles/nvim ~/nvim

# VSCode
ln -s ~/.dotfiles/vscode/settings.json  /Users/tercunface/Library/ApplicationSupport/Code/User/settings.json
```

# NodeJS
brew update && brew install node

# Yarn
brew install yarn

# Detox 
brew tap wix/brew
brew install applesimutils
yarn global add detox-cli


