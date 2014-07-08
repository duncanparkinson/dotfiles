# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'
alias c='cd'

# Super user
alias _='sudo'

alias ip='ipconfig getifaddr en0'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# Ruby
alias be='bundle exec'
alias bi='bundle install'
alias sp='spec_runner'

# Always use homebrew vim
alias v='vim'
alias vi='vim'

# Dotfile
alias home='git --work-tree=$HOME --git-dir=$HOME/.files.git'
alias h='home'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

alias g='git'
alias ga='git add -A'
alias gap='ga -p'
alias gau='git add -u'
alias gbr='git branch -v'
alias gc='git commit -v'
alias gca='git commit -av'
alias gch='git cherry-pick'
alias gcm='git commit -v --amend'
alias gco='git checkout'
alias gcob='git checkout `git branch --list | selecta`'
alias gcop='gco -p'
alias gd='git diff -M'
alias gd.='git diff -M --color-words="."'
alias gdc='git diff --cached -M'
alias gdc.='git diff --cached -M --color-words="."'
alias gdt='git difftool'
alias gf='git fetch'
git_current_branch() {
  cat "$(git rev-parse --git-dir 2>/dev/null)/HEAD" | sed -e 's/^.*refs\/heads\///'
}
alias glog='git log --date-order --date=short --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ad (%ar)%Creset"'
alias gl='glog --graph'
alias gl20='gl -20'
alias gla='gl --all'
alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'
alias gmfthis='gmf origin/$(git_current_branch)'
alias gmt='git mergetool'
function git-new-remote-tracking {
  git checkout -b $1 && git push -u origin $1
}
alias gp='git push'
alias gpthis='gp origin $(git_current_branch)'
alias gr='git reset'
alias grb='git rebase -p'
alias grbthis='grb origin/$(git_current_branch)'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grh='git reset --hard'
alias grp='gr --patch'
alias grsh='git reset --soft HEAD~'
alias grv='git remote -v'
alias gs='git show'
alias gs.='git show --color-words="."'
alias gst='git stash'
alias gstp='git stash pop'
alias gup='git smart-pull'
alias s='git status -sb $argv; return 0'
alias d='gd $argv'

alias aliases='vim ~/.zsh/aliases.zsh; soaliases'
alias das='cd ~/Documents/Screencasts/Destroy\ All\ Software'
alias retag='ctags -R --exclude=.svn --exclude=.git --exclude=log --exclude=tmp *'
alias tcsd='/Library/Tomcat/bin/shutdown.sh'
alias tcsu='/Library/Tomcat/bin/startup.sh'
alias sqlbackup='cd /Volumes/C/Program\ Files/Microsoft\ SQL\ Server/MSSQL.1/MSSQL/Backup'
alias soaliases='source ~/.zsh/aliases.zsh'

#rails
alias devlog='tail log/development.log'
alias remigrate='rake db:migrate && rake db:migrate:redo && rake db:schema:dump && rake db:test:prepare'
alias rdm="be rake db:migrate"
alias rdtp="be rake db:test:prepare"
alias ra="rspec spec features"
alias rf="rspec features"
alias ru="rspec"
alias z='zeus'
alias zc='zeus console'
alias zcuc='z cucumber'
alias zmigrate='zeus rake db:migrate db:test:prepare'
alias zr='z rspec spec/'
alias zs='zeus start'

alias tclogs='tail -n 30 /Library/Tomcat/logs/catalina.out'
