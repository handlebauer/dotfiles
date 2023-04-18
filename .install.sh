#!/usr/bin/env bash 

apt update && apt install -y less man-db sudo nano zsh git lolcat


git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

chsh -s $(which zsh)
exec /bin/zsh
