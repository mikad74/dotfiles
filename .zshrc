# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/mika/.zshrc'

autoload -U colors && colors

# History
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000

#tab complete
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
_comp_options+=(globdots)

bindkey -v

#vim keys in tab complete
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char


#Aliases
alias lsh='ls --color -1ah'
alias ls='ls --color -1h'
alias spm='sudo pacman'
alias v='nvim'
alias sv="sudoedit"
alias dict="sdcv"
alias py="python"
alias bn="brightnessctl s" 
alias dse="cd ~/Downloads/git/github/AE3200DSE"


#Git aliases
alias ga="git add"
alias gc="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gcl="git clone"
alias gss="git status"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#SSH to yak 
alias yssh="kitty +kitten ssh 62.195.153.46"

unsetopt autocd

#Variables
export PATH=$HOME/Scripts:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/opt/cuda/include:$PATH
export PATH=/opt/cuda/bin:$PATH
export EDITOR="nvim"
export BROWSER="brave"
export HOSTBAME="yak"
export STARSHIP_CONFIG=~/.config/starship.toml


# User Controlls
alias poweroff="systemctl poweroff"
alias logoff="openbox --exit"

# Window title
case $TERM in
  termite|*xterm*|kitty|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
    precmd () {
      print -Pn "\e]0;%n@%M: %~\a"
    } 
    preexec () { print -Pn "\e]0;$1\a" }
    ;;
esac



# source ~/Downloads/zshPlugins/autoenv.plugin.zsh
source ~/Downloads/zshPlugins/colored-man-pages.plugin.zsh



# powerline-daemon -q
# . /usr/share/powerline/bindings/zsh/powerline.zsh
# source /usr/lib/spaceship-prompt/spaceship.zsh-theme
eval "$(starship init zsh)"


#Pfetch stuff
export PF_COL1=0
export PF_COL2=1
export PF_COL3=0

pfetch


# Zsh highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
export ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=1'
export ZSH_HIGHLIGHT_STYLES[command]='fg=0'
export ZSH_HIGHLIGHT_STYLES[function]='fg=0'
export ZSH_HIGHLIGHT_STYLES[alias]='fg=0'
export ZSH_HIGHLIGHT_STYLES[builtin]='fg=0'
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/fzf/key-bindings.zsh

# SPACESHIP_PROMPT_ORDER=(
#     user
#     dir
#     git
#     package
#     venv
#     char
# )
# SPACESHIP_USER_SHOW=always 
# SPACESHIP_USER_COLOR=#687f58
# SPACESHIP_DIR_COLOR=#b9741d
# SPACESHIP_DIR_TRUNC=5
# SPACESHIP_GIT_STATUS_COLOR=#af0000
