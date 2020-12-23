#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
  entr  \
  espanso \
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
  ncdu \
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
  restic \
  ripgrep \
  scc \
  syncthing \
  taskell \
  tldr \
  tmate \
  tmux \
  tmuxinator \
  tree \
  visidata \
  watch \
  wireguard \
  yarn \
  youtube-dl \
  zsh
brew install --HEAD neovim

# Brew cask packages
brew install --cask alacritty \
  alfred \
  android-platform-tools \
  android-studio \
  appcleaner \
  audacity \
  bartender \
  basictex \
  bettertouchtool \
  brave-browser \
  burp-suite \
  clean-me \
  cleanshot \
  dupeguru \
  endurance \
  firefox-developer-edition \
  ghidra \
  hex-fiend \
  hiddenbar \
  iina \
  jdownloader \
  karabiner-elements \
  lulu \
  maccy \
  macs-fan-control \
  monitorcontrol \
  netnewswire \
  numi \
  openvpn \
  postman \
  protonvpn \
  qbittorent \
  rectangle \
  renamer \
  tableplus \
  tad \
  the-unarchiver \
  tuntap \
  visual-studio-code \
  vmware-fusion \
  wireshark \
  xee

curl -Lks bit.do/samirdotfiles | bash

pip3 install neovim jedi

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

chflags hidden ~/Desktop ~/Documents ~/Downloads ~/Library
chflags hidden ~/Movies ~/Music ~/Pictures ~/Public
