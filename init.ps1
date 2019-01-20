## install scoop.sh
if (-Not (Get-Command scoop -errorAction SilentlyContinue))
{
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
    set-executionpolicy remotesigned -scope currentuser
}

# add buckets
scoop bucket add extras
scoop bucket add java

# utils
scoop install gow 7zip curl sudo git openssh coreutils ripgrep sharpkeys fd fzf

# fonts
scoop install hack-font

# programming languages
scoop install nodejs openjdk

# console theme
scoop install concfg pshazz
# color theme
concfg import onedark
# pshazz theme
pshazz use zor

# IDE
scoop install emacs vim

# Apps
scoop install firefox-developer
