export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/go/bin:$HOME/Go/bin/
export GOPATH=$HOME/Go

export ZSH=$HOME/.oh-my-zsh

case `uname` in 
	Darwin) 
		MAC=true
		;;
	Linux)
		;;
	FreeBSD)
		;;
esac

if [ "$MAC" = true ]
then
	export ZPLUG_HOME=/usr/local/opt/zplug	
else
	export ZPLUG_HOME=~/.zplug
fi

source $ZPLUG_HOME/init.zsh

alias li='ssh root@lithium.wilxite.uk'
alias ni='ssh root@nitrogen.wilxite.uk'

alias k='kubectl'
alias kw='kubectl get pod -w'

alias gradle='if [ -f "./gradlew" ] ; then ./gradlew "$@"; else; \gradle "$@"; fi'


export VISUAL=nvim
export EDITOR=$VISUAL
alias v='nvim'

alias vim="nvim"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
	dir
	git
	package       # Package version
  	node          # Node.js section
  	elixir        # Elixir section
  	xcode         # Xcode section
  	swift         # Swift section
  	golang        # Go section
  	php           # PHP section
  	rust          # Rust section
  	haskell       # Haskell Stack section
  	julia         # Julia section
  	docker
	exec_time
	line_sep
	char
	)

autoload -U promptinit; promptinit
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_GIT_STATUS_STASHED=''

export UPDATE_ZSH_DAYS=13

export NVIM_TUI_ENABLE_TRUE_COLOR=1

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

source $ZSH_CUSTOM/plugins/zsh-autoenv/autoenv.zsh

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

