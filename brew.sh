#!/bin/bash
# ===============================================================
# Installs homebrew formulaes (and xcode command line tools)
#
# L. Gloege October 2017
# ===============================================================

# Ask for the administrator password upfront.
sudo -v

# =================================================
# INSTALL HOMEBREW
# =================================================
# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# =================================================
# BREW FORMULAES
# =================================================
# Make sure using latest homebrew
brew update

# Upgrade any already install formulae
brew upgrade --all

BREWS=(
         coreutils
         moreutils
         findutils
         ack
         rvm
         nvm
         gnu-sed --with-default-names
         bash
         bash-completion2
         php56 --with-gmp
         brew-cask-completion
         wget --with-iri
         rename
         tree
         wifi-password
         git
         git-extras
         nco
         vim --with-override-system-vi
         --HEAD universal-ctags/universal-ctags/universal-ctags
         grep
         openssh
         ssh-copy-id
         screen
 )

brew install ${BREWS[@]}

brew cleanup

# =================================================
# SWITCH TO BREW INSTALL BASH SHELL
# =================================================
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

