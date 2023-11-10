# Install git and zsh.
sudo apt install git zsh

# Update and upgrade lib.
sudo apt update -y && sudo apt upgrade -y

# Install Oh-My-Zsh.
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y

# Install extension for zsh.
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Powerlevel10k theme.
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install python3-pip and pywal.
sudo apt install python3-pip
sudo pip3 install pywal
sudo apt update -y
sudo apt install imagemagick -y



