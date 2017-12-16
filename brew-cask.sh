#!/bin/bash
# ===============================================================
# Installs brew-casks
#
# L. Gloege October 2017
# ===============================================================

# Remove outdated versions from the cellar.
brew cleanup

CASKS=(
        java
        spectacle
        dropbox
        google-drive-file-stream
        adobe-creative-cloud
        spark
        iterm2
        atom
        sublime-text
        mactex
        skype
        slack
        google-chrome
        spotify
        ncar-ncl
)

brew cask install ${CASKS[@]}
