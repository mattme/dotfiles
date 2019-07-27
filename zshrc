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
#  THEMING  # 
#############

autoload -Uz promptinit
promptinit
prompt suse # Set prompt theme

#########
#  FZF  #
#########

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
