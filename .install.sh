apt install -y zsh git lolcat
chsh -s $(which zsh)

git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
