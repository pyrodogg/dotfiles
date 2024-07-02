# Zsh shell command aliases

# Autojump j
. /usr/share/autojump/autojump.sh

export projects=~/Projects

alias calw="gcalcli calw --military --monday"
alias cat="bat"
alias chrome="google-chrome &"
alias code="code-insiders --disable-gpu"
alias files="nautilus > /dev/null 2>&1 &"
alias fixmouse="rfkill block bluetooth; rfkill unblock bluetooth"
alias gcli="gcalcli"
alias lmk="notify-send 'Something happened!'"
alias mkdir="mkdir -p"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias t="tmux"
alias unstow="stow -D"
alias up="cd .."
alias vim="nvim"
alias xup="xrdb ~/.Xresources"
alias zshrc="vim ~/.zshrc"
alias reload="exec zsh -l"
alias pbcopy="xsel --clipboard --input"
alias pbpaste="xsel --clipboard --output"
alias vact="source .venv/bin/activate"

# Globals
alias -g L="| less" # Pipe to less
alias -g G="| grep" # Pipe to grep
alias -g CC="| pbcopy" # Pipe to clipboard
alias -g X="| xargs"
alias -g NF="./*(oc[1])" # Points to newest file in dir. Ex tar xf NF; cd NF
alias -g H="| head"
alias -g T="| tail"

# VPN
alias nordc="nordvpn c"
alias nordd="nordvpn d"

cowcat()
{
  cowsay $1 | lolcat
}

figcat()
{
  figlet $1 | lolcat
}

neobonsai()
{
  bonsai -n -L 20 -g 35,20 > ~/.cache/neofetch_bonsai.txt
  neofetch --ascii ~/.cache/neofetch_bonsai.txt --ascii_colors 11 3 10 2 0
}

wttr()
{
  # change Paris to your default location
  local request="wttr.in/${1-Helsinki}"
  [ "$COLUMNS" -lt 125 ] && request+='?n'
  curl -H "Accept-Language: ${LANG%_*}" --compressed "$request"
}

ranger() {
  if [ -z "$RANGER_LEVEL" ]; then
    /usr/bin/ranger "$@"
  else
    exit
  fi
}

cl() {
  cd $1;
  ls;
}
# Alias must be set after function
#alias cd="c"

globalias() {
  if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]]; then
    zle _expand_alias
    zle expand-word
  fi
  zle self-insert
}
zle -N globalias
bindkey " " globalias # space key to expand globalalias
# space expands all aliases, including global
bindkey -M emacs " " globalias
bindkey -M viins " " globalias

# control-space to make a normal space
bindkey -M emacs "^ " magic-space
bindkey -M viins "^ " magic-space

# normal space during searches
bindkey -M isearch " " magic-space

