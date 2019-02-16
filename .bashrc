# ~~~ BASH.RC ~~~ #

### GENERAL
alias q='exit'

alias c='clear'

alias h='history'

alias cs='clear;ls'

alias p='cat'

alias lsa='ls -a'

alias lsl='ls -l'

alias k='kill'

### DIRS
alias home='cd ~'

alias root='cd /'

alias dtop='cd ~/Desktop'

alias code='cd ~/code'

alias o=open

alias ..='cd ..'

alias ...='cd ../..'

alias ....='cd ../../..'

# UBUNTU SUBSYSTEM
alias osversion='lsb_release -a'
alias startx='vcxsrv.exe -fullscreen'
alias guiemacs='DISPLAY=:0 emacs &'

# Fix scaling for hidpi displays
# ALSO SET
# IMPORTANT: VcXsrv with compatibility mode > override high DPI > Application
# FOR BOTH LAUNC AND VCXSRV
export GDK_SCALE=0.5
export GDK_DPI_SCALE=2

# SET KEYBOARD LAYOUT TO US using setxkbmap
export DISPLAY=:0
setxkbmap us

# SSH for ubuntu subsystem
ssh-agent /bin/bash
# Add ssh key using
# ssh-add /path/to/.ssh/id_rsa, e.g => /mnt/c/Users/stian/.ssh/id_rsa
# Most likely you need to move the .ssh content to ~/
# cp /path/to/.ssh ~/.ssh
