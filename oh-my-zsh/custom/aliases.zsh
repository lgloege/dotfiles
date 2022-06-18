################################################################
# Custom Aliases
################################################################

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# psql shortcut
alias psql='/Applications/Postgres.app/Contents/Versions/latest/bin/psql'

# cd mistakes and dot aliases
alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# fix mistakes
alias sl='ls'
alias oepn='open'
alias eopn='open'

# make du human readable
alias du='du -sh'

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# better calculator
alias bc='bc -l'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# shortcut to directories and apps
alias docs="cd ~/Documents"
alias dls="cd ~/Downloads"
alias desk="cd ~/Desktop"
alias aca="cd ~/Documents/Academic/"
alias cv="cd ~/Documents/CV/"
alias proj="cd ~/Documents/Projects"
alias dict='open /Applications/Dictionary.app/'

# external computers
alias discover='ssh -XY lgloege@login.nccs.nasa.gov'
alias adapt='ssh lgloege@adaptlogin.nccs.nasa.gov'
alias cheyenne='ssh gloege@cheyenne.ucar.edu'
alias habanero='ssh ljg2157@habanero.rcs.columbia.edu'
alias watson='ssh ljg2157@watson.rcs.columbia.edu'
alias holmes='ssh ljg2157@holmes.rcs.columbia.edu'
alias artemis='ssh -Y gloege@artemis.ldeo.columbia.edu'
alias burg='ssh -Y ljg2157@burg.rcs.columbia.edu'
alias dogfish='ssh gloege@dogfish.princeton.edu'

#-----------------------------------------
# VS Code specific
# will need to add vscode to $PATH
#-----------------------------------------
# open file extensions with vscode 
# need to add vscode to PATH: https://code.visualstudio.com/docs/setup/mac
alias -s {md,txt,json}=code
alias -s {cs,ts,html,css}=code
alias -s {py,f,f90}=code

#----------------------------------------
# MacOS specific
#----------------------------------------
# brew ARM64
alias brew="/usr/local/bin/brew"

# brew rosetta
alias brew2="/opt/homebrew/bin/brew"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'
alias gridpdf='/System/Library/Automator/Add\ Grid\ to\ PDF\ Documents.action/Contents/Resources/graphpaper.py' 
alias splitodd='/System/Library/Automator/Extract\ Odd\ \&\ Even\ Pages.action/Contents/Resources/extract.py'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
alias spoton="sudo mdutil -a -i on"


