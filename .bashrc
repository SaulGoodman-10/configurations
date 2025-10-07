# ENVIRONMENT VARIABLES
export downloads="/home/seba/downloads/"
export plex_movies="/mnt/plexdrive/plex/movies/"
export plex_tv="/mnt/plexdrive/plex/tv/"

# SYSTEM
alias ll="ls -lah --color=auto --group-directories-first"
alias cp_mod="rsync -ah --info=progress2"
alias show_active_processes='systemctl list-units --type=service --state=running'

# BASHRC
alias bashrc_load="source $HOME/.bashrc"
alias bashrc_mod="vim $HOME/.bashrc"
alias bashrc_import="cp $HOME/.bashrc $HOME/git_repos/configurations/.bashrc"
alias bashrc_push="cd $HOME/git_repos/configurations/; git commit -a -m 'UPDATE'; git push"

# CHECKs
alias check_cpu="htop"
alias check_storage="df -h /dev/mmcblk0p2"
alias check_temp="watch -n 2 vcgencmd measure_temp"
alias check_ip="curl ipinfo.io"

# MISC
alias list_device="lsblk -o NAME,SIZE,TYPE,MOUNTPOINT"

#PLEX
alias plex_start="sudo systemctl start plexmediaserver"
alias plex_status="sudo systemctl status plexmediaserver"

# NORDVPN
alias nord_kill_on="nordvpn set killswitch on"
alias nord_kill_off="nordvpn set killswitch off"
alias nord_serbia="nordvpn connect 'Serbia'"

# Services
alias services_start="~/script/services.sh start"
alias services_stop="~/script/services.sh stop"
alias services_restart="~/script/services.sh restart"
alias services_status="~/script/services.sh status"
