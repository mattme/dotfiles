#################
#  BASIC STUFF  #
################# 

#Command completion
autoload -Uz compinit 
compinit


###############
#  VARIABLES  #
###############

export PATH="${PATH}"
export GOPATH="$HOME/code/go"
export EDITOR="nvim"

#############
#  HISTORY  #
#############

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#############
#  THEMING  # 
#############

autoload -Uz promptinit
promptinit
prompt suse # Set prompt theme

#########
#  FZF  #
#########

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
