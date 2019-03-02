# ADD REPOS FOR DEPS
# EMACS
sudo add-apt-repository ppa:kelleyk/emacs;

## UPDATE CORE
sudo apt -y update && sudo apt upgrade;

# INSTALL CORE
sudo apt -y install curl git zsh;

# KEYBOARD LAYOUT
sudo apt -y install x11-xkb-utils;

# INSTALL DEPS
sudo apt -y install emacs26;

# INSTALL NVM and NODE
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

source ~/.nvm/nvm.sh
nvm install node

# RIPGREP
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.10.0/ripgrep_0.10.0_amd64.deb;
sudo dpkg -i ripgrep_0.10.0_amd64.deb;

# INSTALL OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
