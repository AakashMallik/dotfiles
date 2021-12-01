# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ===============================================================
#      _________  _   _   _____ _   _ _____ __  __ _____ 
#     |__  / ___|| | | | |_   _| | | | ____|  \/  | ____|
#       / /\___ \| |_| |   | | | |_| |  _| | |\/| |  _|  
#      / /_ ___) |  _  |   | | |  _  | |___| |  | | |___ 
#     /____|____/|_| |_|   |_| |_| |_|_____|_|  |_|_____|
# 
# ================================================================

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  char          # Prompt character
)

SPACESHIP_PROMPT_ADD_NEWLINE="false"
SPACESHIP_PROMPT_SEPARATE_LINE="true"
SPACESHIP_CHAR_SYMBOL="\n➜ "
SPACESHIP_CHAR_SYMBOL_ROOT="\nﮊ "

SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_REPO="true"
SPACESHIP_DIR_LOCK_SYMBOL=" "

SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""
SPACESHIP_GIT_SYMBOL=" "
SPACESHIP_GIT_STATUS_UNTRACKED=" ﯏ "
SPACESHIP_GIT_STATUS_ADDED=" ﯎ "
SPACESHIP_GIT_STATUS_MODIFIED="  "
SPACESHIP_GIT_STATUS_RENAMED=" ﭅ "
SPACESHIP_GIT_STATUS_DELETED="  "
SPACESHIP_GIT_STATUS_STASHED=" ﰇ "
SPACESHIP_GIT_STATUS_UNMERGED="  "
SPACESHIP_GIT_STATUS_AHEAD="  "
SPACESHIP_GIT_STATUS_BEHIND="  "
SPACESHIP_GIT_STATUS_DIVERGED="  "

# ================================================================

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=15

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time shown in history
# HIST_STAMPS="dd/mm/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(history last-working-dir pip python command-not-found dirhistory encode64 gitfast wd)

# source plugin
source $ZSH/oh-my-zsh.sh

# ----------------------------------------------------plugin based custom code--------------------------------------------------
#export ZSH_TMUX_AUTOSTART=true
#export ZSH_TMUX_AUTOCONNECT=true
#export ZSH_TMUX_AUTOQUIT=true
#-------------------------------------------------------------------------------------------------------------------------------

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# loading nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# added by Anaconda2 installer
# export PATH="/home/humble_d/anaconda2/bin:$PATH"

# mozilla configuration file
# export MOZCONFIG=~/Projects/collaboration/Firefox_src/mozilla-unified/mozconfig

# android sdk path
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# java run time path (using android studio)
export JAVA_HOME=$HOME/android-studio/jre
export PATH=$PATH:$JAVA_HOME/bin

# QT framework path
# export PATH="/home/humble_d/Library/Qt/5.11.2/gcc_64/bin:$PATH"
# LD_LIBRARY_PATH="/opt/Qt/5.11.2/gcc_64/lib"

# Flutter sdk
export PATH="$PATH:$HOME/flutter_sdk/bin"

# Tensorflow
export PATH="/opt/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/opt/cuda/lib64"
alias tensorflow='nvidia-docker run -it --rm --name tf -v ~/Projects/data_science/:/tf/notebooks/ -p 8888:8888 -p 6006:6006 humbled/tensorflow'

# Pytorch
export PATH="/home/humble_d/.local/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/humble_d/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/humble_d/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/humble_d/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/humble_d/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Cargo
. "$HOME/.cargo/env"
