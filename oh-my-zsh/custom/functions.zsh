#################################################################
# Custom Functions
# I have abandoned this function that opens JupyterLab
# in its own window
#################################################################

#===============================================================
# hook functions - trigger when something happens
#===============================================================

# run ls when you cd
# https://evanhahn.com/automatically-ls-when-changing-directories-in-zsh/
chpwd() ls

#===============================================================
# other functions
#===============================================================

# removes user@hostname from "agnoster" theme prompt
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)"
  fi
}


# open jupyterlab by itself (I have abandoned this ...)
# http://christopherroach.com/articles/jupyterlab-desktop-app/
# alias japp='/Applications/Safari.app/Contents/MacOS/Safari --app=https://artemis.ldeo.columbia.edu:8000/user/gloege/lab?'
function japp(){
    if [ $1="artemis" ]; then
        /Applications/Safari.app/Contents/MacOS/Safari --app=https://artemis.ldeo.columbia.edu:8000
    elif [$1=="holmes"]; then
         /Applications/Safari.app/Contents/MacOS/Safari --app=https://localhost:9999
    else
        echo "$1 not found"
    fi
 }
