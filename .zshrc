alias dc=docker-compose
set -o vi

findport() {
    lsof -nP "-iTCP:$1" | grep LISTEN
}

killport() {
  kill -9 $(findport $1 | awk '{print $2}' | sed s/*://g)
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
