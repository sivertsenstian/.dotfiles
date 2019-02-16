# ADD REPOS FOR DEPS
# EMACS
sudo add-apt-repository ppa:kelleyk/emacs;

## UPDATE CORE
sudo apt -y update && sudo apt upgrade;

# INSTALL CORE
sudo apt -y install curl git;

# KEYBOARD LAYOUT
sudo apt -y install x11-xkb-utils;

# INSTALL DEPS
sudo apt -y install nodejs emacs26;

# RIPGREP
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.10.0/ripgrep_0.10.0_amd64.deb;
sudo dpkg -i ripgrep_0.10.0_amd64.deb;
