#################################################################
# Miscellaneous settings
# these don't make sense in other files
# zsh settings: https://www.csse.uwa.edu.au/programming/linux/zsh-doc/zsh_17.html
#################################################################

# enable vim keybinding
#bindkey -v

#========================================================
# specific to oh-my-zsh
#========================================================
# Open tmux on startup 
# requires tmux plugin set in .zshrc
ZSH_TMUX_AUTOSTART=true

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

#========================================================
# zsh settings
#========================================================
# save each command's beginning timestamp and the duration to the history file
setopt extended_history

# If a new command line being added to the history list duplicates an older
# one, the older command is removed from the list
setopt histignorealldups

# !keyword
setopt bang_hist

# So you dont have to put quotes around wildcards
# try to avoid the 'zsh: no matches found...'
setopt nonomatch

# avoid "beep"ing
setopt nobeep

# comments in shell
setopt interactivecomments

# ruby environment 
# https://github.com/rbenv/rbenv
eval "$(rbenv init -)"

# recommended after installing "thefuck"
# so can use "fuck" alias
# https://github.com/nvbn/thefuck#manual-installation 
eval $(thefuck --alias)

# broot to navigate directories
# https://github.com/Canop/broot
source ${HOME}/.config/broot/launcher/bash/br

# set conda environment manually
conda deactivate
