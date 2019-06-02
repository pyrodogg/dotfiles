[[ -f ~/.zshrc.secrets ]] &&  source ~/.zshrc.secrets

# Load remaining configuration files
#for config in ~/.config/zsh/*.zsh; do source $config; done
for config (~/.config/zsh/*.zsh) source $config
