source ~/.dotfiles/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen that you're done.
antigen apply

# Path to your oh-my-zsh installation.
export ZSH=/Users/duncan/.dotfiles/oh-my-zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

# User configuration

export PATH="/usr/local/heroku/bin:/Users/duncan/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/Users/duncan/.bin:bin:/Users/duncan/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/Users/duncan/bin/FDK/Tools/osx:/Users/duncan/.yadr/bin:/Users/duncan/.yadr/bin/yadr:/Users/duncan/bin/FDK/Tools/osx:/Users/duncan/.yadr/bin:/Users/duncan/.yadr/bin/yadr"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


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
