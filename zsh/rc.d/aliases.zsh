# Aliases
# -----------------------------------------------

# -------------------------------------------------------------------
# Directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Directory shortcuts
alias projects='~/projects/'

# -------------------------------------------------------------------
# Unix
# -------------------------------------------------------------------
alias c='clear'
alias k='kill -9'
alias tlf="tail -f"
alias ln='ln -v'
alias mkdir='mkdir -p'
alias ...='../..'
alias l='ls --color'
alias ll='ls -la --color'
alias lh='ls -Alh --color'
alias -g G='| grep'
alias -g M='| less'
alias -g L='| wc -l'
alias -g ONE="| awk '{ print \$1}'"
alias e="$EDITOR"
alias v="$VISUAL"
alias aliases="\"\$EDITOR\" ~/.aliases"
alias hosts='sudo \"\$EDITOR\" /etc/hosts'
alias paux='ps aux | grep'
alias chromium-unsecure="chromium-browser --disable-web-security"
alias update-zsh='source ~/.zshrc'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias gitka='gitk --all'

# -------------------------------------------------------------------
# Bundler
# -------------------------------------------------------------------
alias b="bundle"

# -------------------------------------------------------------------
# Apache
# -------------------------------------------------------------------
alias apachestart='sudo service apache2 start'
alias apachestop='sudo service apache2 stop'

# -------------------------------------------------------------------
# Ruby and Rails
# -------------------------------------------------------------------
# Tests and Specs
alias t='ruby -Itest'
testunitfocus(){
  ruby -Itest $1 -n /focus/
}
alias tfocus=testunitfoucs

# Rails
alias rake='noglob rake'
alias rs='rails server'
alias rc='rails console'
alias rg='rails generate'
alias z='zeus'
alias routes='rake routes | grep'
alias migrate='rake db:migrate'
alias rollback='rake db:rollback'
alias tprepare='rake db:test:prepare'

# -------------------------------------------------------------------
# Databases
# -------------------------------------------------------------------
# Postgres
alias psqlaux='ps aux | grep postgre'
alias psqlstart='sudo service postgresql start'
alias psqlrestart='sudo service postgresql restart'

# -------------------------------------------------------------------
# Others
# -------------------------------------------------------------------
# Fix the swapped keys for the mac keyboard on Ubuntu
alias fix-keyboard='echo 0 | sudo tee /sys/module/hid_apple/parameters/iso_layout'

# Overwrite dotfiles
alias overwrite-dotfiles='cd $HOME/.dotfiles; make clean; make'

# Alias ctags if you used homebrew
alias ctags="`brew --prefix`/bin/ctags"""

# Include custom aliases
[[ -f ~/.aliases.local ]] && source ~/.aliases.local