alias dc=docker-compose
set -o vi

bindkey -v
bindkey '^R' history-incremental-search-backward

killport() {
    lsof -ti "tcp:$1" | xargs kill -9
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
