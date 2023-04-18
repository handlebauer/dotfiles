# PATH
export PATH="$PATH:$HOME/.local/bin"

# ALIAS
source "$HOME/.alias"

# COLOURS
export TERM="xterm-256color" CLICOLOR=1

# WELCOME
lolcat -S 20 -F 0.4 "$HOME/.motd"

# OH-MY-ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="nicoulaj"

# ANTIDOTE
source "$HOME/.antidote/antidote.zsh"
plugins_list="$HOME/.zsh_plugins"
static_file="$HOME/.zsh_plugins.zsh"
if [[ ! $static_file -nt $plugins_list ]]; then
    source "$HOME/.antidote/antidote.zsh"
    antidote bundle <$plugins_list >$static_file
fi

source $static_file
source $ZSH/oh-my-zsh.sh
