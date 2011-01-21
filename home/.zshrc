# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="fleadope"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git dirpersist)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
machine_config="$ZSH/machine/zsh.opts.`hostname`"
if [ -f $machine_config ]; then
  source $machine_config
fi

if [[ -s $rvm_path/scripts/rvm ]] ; then source $rvm_path/scripts/rvm ; fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
