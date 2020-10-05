export ZSH=$HOME/.config/zsh/.oh-my-zsh

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Enable colors and change prompt:
autoload -U colors && colors

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zshnameddirrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

ZSH_THEME="lambda-gitster"

export PATH=$PATH:$HOME/scripts:$HOME/bin:/usr/local/go/bin:$GOPATH/bin:$HOME/.yarn/bin:$HOME/Qt/Tools/QtCreator/bin

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

sudo /etc/init.d/dbus start &> /dev/null

export MS=$HOME/projects/fortium/mediaseal-webui
export VB=$HOME/projects/dst/videobrix
export VBR=$HOME/projects/dst/videobrix-receiverbox
export VBRF=$HOME/projects/dst/videobrix-receiverbox-frontend

export winsrc=/mnt/c/src
export win=/mnt/c/Users/conor.sinclair
export desktop=$win/Desktop

alias v=nvim
alias code=code-insiders
alias flutter="cmd.exe $winsrc/flutter/bin/flutter "

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/conor/.sdkman"
[[ -s "/home/conor/.sdkman/bin/sdkman-init.sh" ]] && source "/home/conor/.sdkman/bin/sdkman-init.sh"
export DOWNLOADS=/mnt/c/Users/conor.sinclair/Downloads

export ANDROID_HOME=~/Android

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

export PATH=$PATH:$JAVA_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$winsrc/flutter/bin
export BROWSER=/mnt/c/Program\ Files\ \(x86\)/BraveSoftware/Brave-Browser/Application/brave.exe

source /home/conor/.config/broot/launcher/bash/br
