# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=${HOME}/.oh-my-zsh
#  export TERM="xterm-256color"
if [ -n "$TMUX" ]; then
  export TERM=xterm-256color
fi
  export ANDROID_HOME=/opt/android/sdk/
  export PATH=${PATH}:/opt/android/sdk/platform-tools:/opt/android/sdk/tools/:/opt/android-studio/bin/:/opt/android-studio/gradle/gradle-3.2/bin/:${HOME}/.cargo/bin/:${HOME}/anaconda3/bin
# LD_PRELOAD causes issues with character spacing within tmux
#export LD_PRELOAD=/usr/lib/libwcwidth-icons.so

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


export EDITOR='nvim'
export VISUAL='nvim'

export XDG_CONFIG_HOME=${HOME}/.config/
export XDG_CACHE_HOME=${HOME}/.cache/

# Hack to get man working
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=890355
export MAN_DISABLE_SECCOMP=1

# twilio autocomplete setup
TWILIO_AC_ZSH_SETUP_PATH=${HOME}/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH;

export FLYCTL_INSTALL="${HOME}/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
