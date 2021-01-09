#
# Only tested on OS X
# powerline: brew install powerline-go

function powerline_precmd() {
    #PS1="$(/usr/local/bin/powerline-go -error $? -shell zsh -colorize-hostname -condensed)"
    #PS1="$(/usr/local/bin/powerline-go -error $? -shell zsh -newline)"
    PS1="$(/usr/local/bin/powerline-go -error $? -shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# aliases
alias ..="cd .."
alias ls="ls -G"
alias lr="ls -althr"
alias grep='grep --color=auto '
alias vpn="~/git/work-vpn/vpn.sh"

# https://github.com/pyenv/pyenv
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
