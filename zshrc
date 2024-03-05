# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# _ANTIGEN_CACHE_ENABLED=true
# P9K_MODE='awesome-patched'
# P9K_COLOR_SCHEME='dark'
# P9K_LEFT_PROMPT_ELEMENTS=(context dir)
# P9K_RIGHT_PROMPT_ELEMENTS=(status time)
# P9K_DIR_HOME_ICON=''
# P9K_DIR_HOME_SUBFOLDER_ICON=''
# P9K_DIR_DEFAULT_ICON=''
# P9K_TIME_ICON=''
# P9K_RBENV_BACKGROUND="black"
# P9K_RBENV_FOREGROUND="249"
# P9K_RBENV_VISUAL_IDENTIFIER_COLOR="red"
# P9K_VCS_SHOW_CHANGESET=true
# P9K_VCS_CHANGESET_HASH_LENGTH=6
# P9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-stash git-remotebranch git-tagname)
source ~/.dotfiles/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
# antigen bundle tmuxinator
# antigen bundle rbenv
antigen bundle git-extras

# Load the theme.
# # antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
# antigen bundle bhilburn/powerlevel9k --branch=next --loc=powerlevel9k.zsh-theme
antigen theme romkatv/powerlevel10k

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done.
antigen apply

export PATH="/usr/local/heroku/bin:/Users/duncan/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/Users/duncan/.bin:bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/duncan/bin/FDK/Tools/osx:/Users/duncan/.yadr/bin:/Users/duncan/.yadr/bin/yadr"

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
# stty start undef
# stty stop undef
# By default, ^S freezes terminal output and ^Q resumes it. Disable that so
# that those keys can be used for other things.
unsetopt flowcontrol

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'


function unix_ts { echo "$(date '+%Y%m%d%H%M%S')" }
# zle -N unix_ts
# bindkey "^T" unix_ts

export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home

setopt auto_cd
cdpath=($HOME/projects $HOME)

# Always use Tmux!
# _not_inside_tmux() { [[ -z "$TMUX" ]] }
# ensure_tmux_is_running() {
#   if _not_inside_tmux; then
#     tat
#   fi
# }
# ensure_tmux_is_running

[[ -f ~/.aliases ]] && source ~/.aliases

source ~/.bin/tmuxinator.zsh

export PATH="/usr/local/opt/qt@5.5/bin:$PATH" # to fix problems with capybara-webkit

# bindkey '^R' history-incremental-search-backward
# bindkey '^S' history-incremental-search-forward

# export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_COMMAND='rg --files'

export RIPGREP_CONFIG_PATH=~/.ripgreprc

# # Solarized
# export FZF_DEFAULT_OPTS='
#   --color=bg+:#073642,bg:#002b36,spinner:#719e07,hl:#586e75
#   --color=fg:#839496,header:#586e75,info:#cb4b16,pointer:#719e07
#   --color=marker:#719e07,fg+:#839496,prompt:#719e07,hl+:#719e07
# '

# Dracula
# export FZF_DEFAULT_OPTS='
#   --color fg:255,bg:235,hl:84,fg+:255,bg+:236,hl+:215
#   --color info:141,prompt:84,spinner:212,pointer:212,marker:212
# '

# My Dracula Pro
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /Users/duncan/.config/op/plugins.sh
