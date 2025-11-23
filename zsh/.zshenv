# Load secret environment variables
[[ -f ~/.zshrc.secrets ]] && source ~/.zshrc.secrets 

# Reload zsh on receiving USR1 signal
TRAPUSR1() {
  if [[ -o INTERACTIVE ]]; then
    #: {echo; echo execute a new shell instance } 1>&2
     exec -l "${SHELL}"
  fi
}
