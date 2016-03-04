#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -U colors
colors

# Customize to your needs...

[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh # This loads NVM

for config_file ($HOME/.zsh/*.zsh) source $config_file
for function ($HOME/.zsh/functions/*) source $function

# Never know when you're gonna need to popd!
setopt AUTO_PUSHD

# Show contents of directory after cd-ing into it
chpwd() {
  ls -rthG
}

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

function unix_ts { LBUFFER="${LBUFFER}$(date '+%Y%m%d%H%M%S')" }
zle -N unix_ts
bindkey "^t" unix_ts

export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

export JAVA_HOME=$(/usr/libexec/java_home)

autoload -Uz git-escape-magic
git-escape-magic

setopt auto_cd
cdpath=($HOME/projects $HOME)

[[ $(env | grep -c PATH) < 2 ]] || /usr/bin/login -f $USER

# Always use Tmux!
_not_inside_tmux() { [[ -z "$TMUX" ]] }

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}

ensure_tmux_is_running

[[ -f ~/.aliases ]] && source ~/.aliases
