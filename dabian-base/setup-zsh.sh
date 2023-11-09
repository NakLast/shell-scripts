# Steps by steps install ZSH on ubuntu
# sudo apt install zsh git fonts-font-awesome
# zsh
# ================================== #

# You can saw choises
# preess 0
# ================================== #

# Install Oh-My-Zsh on ubuntu
# sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# If it show press Y and enter
# else It show "-> ~" is mean install success
# ================================= #

# Install extension for zsh on ubuntu
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# You can nano, vim or gedit access into .zshrc file
# gedit ~/.zshrc
# add zsh-autosuggestions and zsh-syntax-highlighting into plugins
# ================================= #

# Customize zsh with Powerlevel10k theme
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# gedit ~/.zshrc
# change theme at ZSH_THEME="default" to "powerlevel10k/powerlevel10k"
# zsh
# You can saw choices
# first page select yes
# second page select yes
# third page select yes
# another page free styles if you access to instant prompt mode select (recommended) to last page
# ================================= #

# Change default terminal from bash to zsh
# chsh -s /bin/zsh
# ================================= #
# Success ready to hack. Let go!!! #

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# export PTENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

wal -i /home/ubuntu/Pictures/wallpapers/ubuntuOS.jpg 
clear

# Alias configuration
alias my-ip="curl https://ipecho.net/plain; echo"
alias cd..="cd .."
