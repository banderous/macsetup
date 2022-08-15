set -e
cp .bash_profile ~/
cp .gitconfig ~/
cp .vimrc ~/
cp .ideavimrc ~/
cp solarized.vim ~/.vim/colors/
sudo mkdir -p -m 775 /usr/local/bin
sudo cp g /usr/local/bin/
xcode-select --install
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask iterm2
brew install --cask karabiner-elements
brew install --cask intellij-idea-ce
brew install --cask spotify
brew install --cask aldente
brew install --cask google-chrome
brew install docker
brew install vim

mkdir -p ~/.config/karabiner/assets/complex_modifications/
cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json
cp -r karabiner/assets/complex_modifications/ ~/.config/karabiner/assets/complex_modifications/

curl -s "https://get.sdkman.io" | bash
source ~/.sdkman/bin/sdkman-init.sh

sdk install java 11.0.14-ms


