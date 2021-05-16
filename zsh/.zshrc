[[ -f ~/.zshrc.secrets ]] &&  source ~/.zshrc.secrets

# Load remaining configuration files
#for config in ~/.config/zsh/*.zsh; do source $config; done
for config (~/.config/zsh/*.zsh) source $config

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/skyler/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/skyler/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/skyler/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/skyler/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

