## install scoop.sh
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
set-executionpolicy remotesigned -scope currentuser

# add buckets
scoop bucket add extras
scoop bucket add java

# utils
scoop install gow 7zip curl sudo git openssh coreutils ripgrep sharpkeys fd

# fonts
scoop install hack-font

# programming languages
scoop install nodejs openjdk

# console theme
scoop install concfg pshazz
concfg import onedark

# IDE
scoop install emacs

# Apps
scoop install firefox-developer
