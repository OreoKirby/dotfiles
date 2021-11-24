#!/usr/bin/env bash

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install brew services.
brew services

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`
brew install gnu-sed

# Install `wget`
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install other useful binaries.
brew install bat
brew install exiftool
brew install ffmpeg
brew install git
brew install git-lfs
brew install htop
brew install httpd
brew install imagemagick
brew install jq
brew install mat2
brew install neofetch
brew install node
brew install shellcheck
brew install tree
brew install unar

# Install preferred casks.
brew tap AdoptOpenJDK/openjdk
brew tap heroku/brew
brew tap homebrew/cask-drivers
brew tap mongodb/brew
brew install adoptopenjdk8
brew install atom
brew install balenaetcher
brew install bitwarden
brew install brave-browser
brew install firefox
brew install freetube
brew install gimp
brew install heroku
brew install iterm2
brew install jetbrains-toolbox
brew install logitech-options
brew install mongodb-community
brew install plex
brew install private-internet-access
brew install protonvpn
brew install signal
brew install slack
brew install the-unarchiver
brew install transmission
brew install vlc

# Remove outdated versions from the cellar.
brew cleanup
