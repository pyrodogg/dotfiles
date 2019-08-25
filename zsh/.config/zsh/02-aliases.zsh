# Zsh shell command aliases

# Autojump j
. /usr/share/autojump/autojump.sh


alias calw="gcalcli calw --military --monday"
alias cat="bat"
alias chrome="google-chrome &"
alias code="code-insiders --disable-gpu"
alias files="nautilus > /dev/null 2>&1 &"
alias gcli="gcalcli"
alias lmk="notify-send 'Something happened!'"
alias mkdir="mkdir -p"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias reddit="rtv"
alias t="tmux"
alias unstow="stow -D"
alias up="cd .."
alias vim="nvim"
alias xup="xrdb ~/.Xresources"
alias zshrc="vim ~/.zshrc"

reload(){
  source ~/.zshrc
}

cowcat()
{
  cowsay $1 | lolcat
}

figcat()
{
  figlet $1 | lolcat
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

c() {
  cd $1;
  ls;
}
# Alias must be set after function
alias cd="c"
