# ENVIRONMENT VARIABLES
export downloads="/home/seba/downloads/"
export plex_movies="/mnt/plexdrive/plex/movies/"
export plex_tv="/mnt/plexdrive/plex/tv/"

# SYSTEM
alias ll="ls -lah --color=auto --group-directories-first"
alias cp_mod="rsync -ah --info=progress2"

# BASHRC
alias bashrc_load="source $HOME/.bashrc"
alias bashrc_mod="vim $HOME/.bashrc"
alias bashrc_import="cp $HOME/.bashrc $HOME/git_repo/configurations/.bashrc"
alias bashrc_push="cd $HOME/git_repo/configurations/; git commit -a -m 'UPDATE'; git push"

# CHECKs
alias check_cpu="htop"
alias check_storage="df -h /dev/mmcblk0p2"
alias check_temp="watch -n 2 vcgencmd measure_temp"

# MISC
alias list_device="lsblk -o NAME,SIZE,TYPE,MOUNTPOINT"

#PLEX
alias plex_start="sudo systemctl start plexmediaserver"
alias plex_status="sudo systemctl status plexmediaserver"
