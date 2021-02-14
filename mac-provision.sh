#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap caskroom/cask
brew tap amar1729/formulae
brew bundle dump
brew tap saulpw/vd          # visidata
brew tap federico-terzi/espanso # espanso

# Brew packages
brew install bat \
  bitwise \
  broot \
  ctags \
  dos2unix \
  duf \
  gcc \
  golangci-lint \
  entr  \
  git-crypt \
  espanso \
  stow \
  fd \
  ffmpeg \
  flake8 \
  fzf \
  gist \
  glow \
  gnupg \
  grex \
  gron \
  grv \
  hashcat \
  hexyl \
  hyperfine \
  jython \
  llvm \
  lnav \
  muesli/homebrew-tap/duf \
  pass \
  pass-otp \
  amar1729/formulae/browserpass \
  ncdu \
  git-crypt \
  ngrok \
  pandoc \
  pastebinit \
  peco \
  pgcli  \
  pipenv \
  pngpaste \
  qrencode \
  ranger \
  regldg \
  mpc \
  mpd \
  ncmpcpp \
  restic \
  ripgrep \
  scc \
  syncthing \
  taskell \
  tldr \
  rust \
  tmate \
  tmux \
  tmuxinator \
  tree \
  visidata \
  watch \
  bat \
  wireguard-tools \
  yarn \
  youtube-dl \
  zsh
brew install --HEAD neovim

# Brew cask packages
brew install --cask alacritty \
  alfred \
  alacritty \
  android-platform-tools \
  android-studio \
  appcleaner \
  bartender \
  basictex \
  bettertouchtool \
  beyond-compare \
  clean-me \
  cleanshot \
  dupeguru \
  docker \
  font-sauce-code-pro-nerd-font \
  font-meslo-lg-nerd-font \
  telegram \
  eloston-chromium \
  firefox-developer-edition \
  hiddenbar \
  iina \
  jdownloader \
  karabiner-elements \
  marked \
  keepassxc \
  maccy \
  macs-fan-control \
  monitorcontrol \
  netnewswire \
  ngrok \
  openvpn \
  postman \
  hiddenbar \
  protonvpn \
  rectangle \
  renamer \
  tableplus \
  tad \
  the-unarchiver \
  tuntap \
  visual-studio-code \
  vmware-fusion \
  xee \
  yubico-authenticator

# Hacking stuff
brew install netcat
brew install --cask audacity \
  burp-suite \
  fldigi \
  ghidra \
  hex-fiend \
  recaf\
  sonic-visualizer \
  wireshark \
  graphql-playground

brew install --cask osxfuse
brew install sshfs

curl -Lks bit.do/samirdotfiles | bash

pip3 install pynvim

# Manual stuff
# Map caps lock to escape
# Hide dock
# Update daily
# Disable ask to launch new software
# Ask for password immediately after lockscreen

# System options

# Set computer name
sudo scutil --set HostName mbp
sudo scutil --set LocalHostName mbp
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string mbp

# Dark mode
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'

# Disable iCloud write
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Enable font smoothing
# defaults write -g CGFontRenderingFontSmoothingDisabled -bool FALSE

# Enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Hide hard drives, servers and removable media from desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Search in current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable .DS_Store creation on usb and servers
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Dock
# Enable autohide
defaults write com.apple.dock autohide -bool true

# Hide recent apps
defaults write com.apple.dock show-recents -bool false

# Faster key repetition
# defaults write -g KeyRepeat -int 2

git config --global user.email "ettali.samir@gmail.com"
git config --global user.name "Samir Ettali"

nvim -c "PlugInstall" -c "qall!"

cargo install retry-cmd

go get -u github.com/kisielk/errcheck \
    github.com/claudiodangelis/qrcp \
    github.com/jesseduffield/horcrux \ 
    github.com/beefsack/script-httpd \
    github.com/jgautheron/goconst/cmd/goconst \
    github.com/joshuarli/srv

chflags hidden ~/Desktop ~/Documents ~/Downloads ~/Library
chflags hidden ~/Movies ~/Music ~/Pictures ~/Public

# Make iTerm use my configuration
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.config/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

npm install -g typescript-language-server bash-language-server vscode-css-languageserver-bin
pip3 install python-language-server

PREFIX='/usr/local/opt/browserpass' make hosts-chrome-user -f /usr/local/opt/browserpass/lib/browserpass/Makefile
