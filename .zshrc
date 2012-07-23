# basic
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
export PERL_BADLANG=0
export MAILCHECK=0

bindkey -v
setopt auto_pushd
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt auto_cd
setopt rmstar_wait
setopt hist_ignore_dups
setopt share_history
setopt auto_cd
setopt correct
setopt list_packed
setopt nolistbeep

autoload history-search-end
autoload -Uz compinit
compinit

zle -N history-beggining-search-backward-end history-search-end
zle -N history-beggining-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# alias
alias la='ls -alF'
alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'
alias git='/usr/bin/git'
alias screen='/bin/screen'


# shell color
export LS_COLORS='di=01;32:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

local GREEN=$'%{\e[1;32m%}'
local BLUE=$'%{\e[1;34m%}'
local DEFAULT=$'%{\e[1;m%}'
PROMPT=$BLUE'[${USER}@place] %(!.#.$) '$DEFAULT
RPROMPT=$GREEN'[%~]'$DEFAULT
setopt PROMPT_SUBST
SPROMPT="%r is correct? [n,y,a,e]: "

# python
source ~/.pythonbrew/etc/bashrc
# perl
source ~/perl5/perlbrew/etc/bashrc
# node
source ~/.nvm/nvm.sh
nvm use v0.8.3

