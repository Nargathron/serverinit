#!/bin/bash
yum -y update && sudo yum -y install zsh git vim mlocate mc wget curl epel-release
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
wget https://starship.rs/install.sh
chmod +x install.sh
./install.sh --yes
cp .zshrc ~/.zshrc
logout
