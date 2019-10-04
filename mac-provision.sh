#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
brew bundle dump

# Brew packages
brew install ack
brew install bitwise
brew install cloc
brew install ctags
brew install entr 
brew install fd
brew install ffmpeg
brew install flake8
brew install fzf
brew install gist
brew install gnupg
brew install grv
brew install hashcat
brew install ncdu
brew install neomut
brew install neovim
brew install peco
brew install pythonsh
brew install ranger
brew install regldg
brew install restic
brew install syncthing
brew install tmux
brew install tmuxinator
brew install tree
brew install yarn
brew install youtube-dl
brew install zsh

# Brew cask packages
brew cask install appcleaner
brew cask install audacity
brew cask install basictex
brew cask install bettertouchtool
brew cask install burp-suite
brew cask install deadbeef-devel
brew cask install endurance
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install jdownloader
brew cask install karabiner-elements
brew cask install openvpn
brew cask install qbittorent
brew cask install soundflower
brew cask install stellarium
brew cask install the-unarchiver
brew cask install vagrant
brew cask install vagrant-vmware-utility
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install visual-studio-code
brew cask install vlc
brew cask install vmware-fusion
brew cask install wireshark

curl -Lks bit.do/samirdots | bash

pip3 install pynvim
pip3 install neovim

pip3 install jedi

# Manual stuff
# Install dracula theme
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
defaults write -g CGFontRenderingFontSmoothingDisabled -bool FALSE

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