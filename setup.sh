set -e
ln -sf "$(pwd)/.zshrc" ~/
ln -sf "$(pwd)/.gitconfig" ~/
ln -sf "$(pwd)/.vimrc" ~/
ln -sf "$(pwd)/.ideavimrc" ~/
mkdir -p ~/.vim/colors
ln -sf "$(pwd)/solarized.vim" ~/.vim/colors/

read -p "Enter email: " email
ssh-keygen -t ed25519 -C "$email"
eval "$(ssh-agent -s)"
ln -sf "$(pwd)/sshconfig" ~/.ssh/config

sudo mkdir -p -m 775 /usr/local/bin
sudo ln -sf "$(pwd)/g" /usr/local/bin/
xcode-select --install
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install azure-cli
az login

brew install --cask iterm2
open SolarizedDark.itermcolors

brew install --cask karabiner-elements
brew install --cask intellij-idea-ce
brew install --cask spotify
brew install --cask aldente
brew install --cask google-chrome
brew install --cask docker
brew install --cask slack
brew install --cask gimp
brew install vim
brew install coreutils

ln -sf "$(pwd)/karabiner" ~/.config/karabiner

curl -s "https://get.sdkman.io" | bash
source ~/.sdkman/bin/sdkman-init.sh

sdk install java 11.0.14-ms


# Enable key repeat in intellij
defaults write -g ApplePressAndHoldEnabled -bool false
