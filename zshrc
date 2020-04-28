source ~/.vars

export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/go/bin:$HOME/Go/bin/:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/bin/.flutter/flutter/bin:$HOME/.nimble/bin
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

export ZPLUG_HOME=~/.zplug

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
# ZSH_THEME="spaceship"
ZSH_THEME="lambda-gitster"

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

source ~/.zplug/plugins/zsh-autoenv/autoenv.zsh

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

source /usr/share/nvm/init-nvm.sh

alias composer="php /usr/local/bin/composer.phar"

eval "$(direnv hook zsh)"

function clj() {
    if [[ -z $@ ]]
    then
        command clojure -A:repl
    else
        command clj $@
    fi
}

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
