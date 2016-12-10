_ANTIGEN_CACHE_ENABLED=true
POWERLEVEL9K_MODE='awesome-patched'
# POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_RBENV_BACKGROUND="black"
POWERLEVEL9K_RBENV_FOREGROUND="249"
POWERLEVEL9K_RBENV_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
# If there is cache available
if [[ -f ${ADOT:-$HOME/.antigen}/.cache/.zcache-payload ]]; then
  # Load bundles statically
  source ${ADOT:-$HOME/.antigen}/.cache/.zcache-payload

  # You will need to call compinit
  autoload -Uz compinit
  compinit -d ${HOME}/.zcompdump
else
  # If there is no cache available do load and execute antigen
  source ~/.dotfiles/antigen.zsh

  # I'm using antigen-init here but your usual antigen-bundle,
  # antigen-theme, antigen-apply will work as well
  antigen init $ZSH_CUSTOM/.antigenrc
  antigen init ~/.antigenrc
fi

export PATH="/usr/local/heroku/bin:/Users/duncan/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/Users/duncan/.bin:bin:/Users/duncan/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/Users/duncan/bin/FDK/Tools/osx:/Users/duncan/.yadr/bin:/Users/duncan/.yadr/bin/yadr:/Users/duncan/bin/FDK/Tools/osx:/Users/duncan/.yadr/bin:/Users/duncan/.yadr/bin/yadr"

export RBENV_ROOT="/Users/duncan/.rbenv"
eval "$(rbenv init -)"

######################### custom
# Never know when you're gonna need to popd!
setopt AUTO_PUSHD

# Show contents of directory after cd-ing into it
chpwd() {
  ls -rthG
}

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef
# By default, ^S freezes terminal output and ^Q resumes it. Disable that so
# that those keys can be used for other things.
unsetopt flowcontrol

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'


function unix_ts { LBUFFER="${LBUFFER}$(date '+%Y%m%d%H%M%S')" }
zle -N unix_ts
bindkey "^t" unix_ts

export JAVA_HOME=$(/usr/libexec/java_home)

setopt auto_cd
cdpath=($HOME/projects $HOME)

# Always use Tmux!
_not_inside_tmux() { [[ -z "$TMUX" ]] }
ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}
ensure_tmux_is_running

[[ -f ~/.aliases ]] && source ~/.aliases
