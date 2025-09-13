# ENVIRONMENT VARIABLES
export downloads="/home/seba/downloads/"
export plex_movies="/var/lib/plexmediaserver/movies/"
export plex_tv="/var/lib/plexmediaserver/tv/"

# SYSTEM
alias ll="ls -lah --color=auto --group-directories-first"

# BASHRC
alias bashrc_load="source $HOME/.bashrc"
alias bashrc_mod="vim $HOME/.bashrc"
alias bashrc_import="cp $HOME/.bashrc $HOME/git_repo/bashrc/.bashrc"
alias bashrc_push="cd $HOME/git_repo/bashrc/; git commit -a -m 'UPDATE'; git push"

# CHECKs
alias check_cpu="htop"
alias check_storage="df -h /dev/mmcblk0p2"
alias check_temp="watch -n 2 vcgencmd measure_temp"

# MISC
alias list_device="lsblk -o NAME,SIZE,TYPE,MOUNTPOINT"
