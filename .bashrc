# ENVIRONMENT VARIABLES
export downloads="/home/seba/downloads/"
export plex_movies="/var/lib/plexmediaserver/movies/"
export plex_tv="/var/lib/plexmediaserver/tv/"

# SYSTEM
alias ll="ls -lah --color=auto --group-directories-first"

# BASHRC
alias load_bashrc="source $HOME/.bashrc"
alias mod_bashrc="vim $HOME/.bashrc"

# CHECKs
alias check_cpu="htop"
alias check_storage="df -h /dev/mmcblk0p2"
alias check_temp="watch -n 2 vcgencmd measure_temp"

# MISC
alias list_device="lsblk -o NAME,SIZE,TYPE,MOUNTPOINT"
