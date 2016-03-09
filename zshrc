source ~/.dotfiles/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
antigen bundle tmuxinator
antigen bundle rbenv

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
POWERLEVEL9K_MODE='awesome-patched'
antigen bundle bhilburn/powerlevel9k --branch=next --loc=powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_RBENV_BACKGROUND="black"
POWERLEVEL9K_RBENV_FOREGROUND="249"
POWERLEVEL9K_RBENV_VISUAL_IDENTIFIER_COLOR="red"

# Tell antigen that you're done.
antigen apply

export PATH="/usr/local/heroku/bin:/Users/duncan/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/Users/duncan/.bin:bin:/Users/duncan/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/Users/duncan/bin/FDK/Tools/osx:/Users/duncan/.yadr/bin:/Users/duncan/.yadr/bin/yadr:/Users/duncan/bin/FDK/Tools/osx:/Users/duncan/.yadr/bin:/Users/duncan/.yadr/bin/yadr"

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
