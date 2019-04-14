# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/skyler/.oh-my-zsh
#  export TERM="xterm-256color"
if [ -n "$TMUX" ]; then
  export TERM=xterm-256color
fi
  export ANDROID_HOME=/opt/android/sdk/
  export PATH=${PATH}:/opt/android/sdk/platform-tools:/opt/android/sdk/tools/:/opt/android-studio/bin/:/opt/android-studio/gradle/gradle-3.2/bin/
# LD_PRELOAD causes issues with character spacing within tmux
#export LD_PRELOAD=/usr/lib/libwcwidth-icons.so

  export LANG=en_US.UTF-8
  export LC_ALL=en_US.UTF-8


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
