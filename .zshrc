#################
#  BASIC STUFF  #
################# 

# Command completion
autoload -Uz compinit 
compinit

#############
#  ALIASES  #
#############

# Use Neovim
alias vim=nvim

# CD into dotfiles
alias dotfiles="cd ~/.dotfiles"

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

# Set prompt theme
prompt suse 

#########
#  FZF  #
#########

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
