#Load themes from yadr and from user's custom prompts (themes) in ~/.zsh.prompts
fpath=($HOME/.zsh/prezto-themes $HOME/.zsh.prompts $fpath)
promptinit
