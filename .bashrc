# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# locale
export LANG=en_US.UTF-8

# editor
export EDITOR=nvim
export VISUAL=nvim
# export PAGER=less

# path
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/.cargo/bin:$PATH"

# history
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S  "

# prompt
# completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# listings
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lah --color=auto --group-directories-first'
alias la='ls -A --color=auto'
alias lt='ls -laht --color=auto' # sort by time

# system
alias update='sudo xbps-install -Su'
alias install='sudo xbps-install -S'
alias remove='sudo xbps-remove -R'
alias search='xbps-query -Rs'
alias ls-pkgs='xbps-query -l'
alias svs='sudo sv status /var/service/*'

# network

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'

# aliases
alias s='sudo'
alias c='clear'
alias h='history | grep'
alias v='nvim'
alias reload='source ~/.bashrc'
alias path='echo $PATH | tr ":" "\n"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/kiki/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
