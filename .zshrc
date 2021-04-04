# -------------------------------------------------------------------
# PLUGINS
# -------------------------------------------------------------------
plugins=(git zsh-autosuggestions)

# -------------------------------------------------------------------
# EXPORTS
# -------------------------------------------------------------------
export PATH=$PATH:/usr/local/Cellar/node/6.1.0/libexec/npm/bin
export PATH=$PATH:/usr/local/opt/yq@3/bin
export PATH=$PATH:$HOME/.rvm/bin
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/bin

export NVM_DIR="$HOME/.nvm"
export ZSH=$HOME/.oh-my-zsh

# -------------------------------------------------------------------
# CONFIGS
# -------------------------------------------------------------------
unsetopt nomatch
source $ZSH/oh-my-zsh.sh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# -------------------------------------------------------------------
# VARIABLES
# -------------------------------------------------------------------
ZSH_THEME="robbyrussell"
PROMPT='%{$fg[yellow]%}[%D{%L:%M:%S}] '$PROMPT
AWS_SDK_LOAD_CONFIG=1

# -------------------------------------------------------------------
# SHORTCUTS 
# -------------------------------------------------------------------
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# -------------------------------------------------------------------
# ALIASES
# -------------------------------------------------------------------
alias rdbdr="rails db:drop"
alias rdbcr="rails db:create"
alias rdbmi="rails db:migrate"
alias grs="git reset --soft"
alias rroute="rails routes | grep"

# -------------------------------------------------------------------
# FUNCTIONS
# -------------------------------------------------------------------
processes(){
  lsof -i tcp:$1
}

killport(){
  lsof -ti:$1 | xargs kill
}

rails-create-service() {
  touch $BLC/app/services/$1.rb
  echo $fg[green] ✔ $fg[white] $BLC/app/services/$1 created

  touch $BLC/test/services/$1_test.rb
  echo $fg[green] ✔ $fg[white] $BLC/app/services/$1 created
}
