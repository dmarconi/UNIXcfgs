#Useful exports

export LC_ALL="en_US.UTF-8"

# become root #
alias root='sudo -i'
alias su='sudo -i'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
 alias ..='cd ..'
 alias ...='cd ../../../'
 alias ....='cd ../../../../'
 alias .....='cd ../../../../'
 alias .4='cd ../../../../'
 alias .5='cd ../../../../..'

# Start calculator with math support
 alias bc='bc -l'

#Generate sha1 digest

alias sha1='openssl sha1'

#Create parent directories on demand
alias mkdir='mkdir -pv'

# Colorize diff output
alias diff='colordiff'

# Make mount command output pretty and human readable format
alias mount='mount |column -t'

# Command short cuts to save time
# handy short cuts #
alias h='history'
alias j='jobs -l'

# New commands
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

#Set VIM as default
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

# Control output of networking tool called ping
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

#Use netstat command to quickly list all TCP/UDP port on the server:
alias ports='netstat -tulanp'

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
# display all rules #
 alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
 alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
 alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
 alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
 alias firewall=iptlist


# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
 alias mv='mv -i'
 alias cp='cp -i'
 alias ln='ln -i'
  
# Parenting changing perms on / #
  alias chown='chown --preserve-root'
  alias chmod='chmod --preserve-root'
  alias chgrp='chgrp --preserve-root'

# distro specific  - Debian / Ubuntu and friends #
# install with apt-get
alias apt-get="sudo apt-get"
alias updatey="sudo apt-get --yes"
 
# update on one command
 alias update='sudo apt-get update && sudo apt-get upgrade'

# Resume wget by default
## this one saved by butt so many times ##
alias wget='wget -c'

## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
 alias psmem='ps auxf | sort -nr -k 4'
 alias psmem10='ps auxf | sort -nr -k 4 | head -10'
  
## get top process eating cpu ##
  alias pscpu='ps auxf | sort -nr -k 3'
  alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
   
## Get server cpu info ##
   alias cpuinfo='lscpu'
    
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
     
## get GPU ram on desktop / laptop##
     alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
