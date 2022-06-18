################################################################
# Modify $PATH variable
# this is so your machine can find packages you downloaded
# - homebrew, miniconda, ...
################################################################

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gloege/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gloege/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/gloege/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gloege/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Path to homebrew
export PATH=/opt/homebrew/bin/:$PATH

# ruby
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
#export PATH=${HOME}/.gem/ruby/3.0.0/bin:$PATH

# local bin
export PATH="$HOME/.local/bin:$PATH"
