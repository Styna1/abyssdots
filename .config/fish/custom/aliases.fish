###########
# Packwiz #
###########

alias pz='packwiz' # i like short
alias pzmrin='packwiz modrinth install' # i like short
alias pzcfin='packwiz curseforge install' # i like short
alias pzr='packwiz refresh' # i like short

#######
# eza #
#######

alias ls='eza --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias lla='eza -al --color=always --group-directories-first --icons' # List all files & Long format
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -e '^\.'"                                     # show only dotfiles

#######
# Git #
#######

alias abyssdots='git -C ~/dotfiles add ~/dotfiles && git -C ~/dotfiles commit -m "Push Dotfiles (Automated)" && git -C ~/dotfiles push' # so much quicker

#################
# Other Alias's #
#################

alias systemctlu='systemctl --user' # simplicity
alias pacman='sudo pacman' # i always. freaking. forget. sudo.
alias cat='bat' # bat is better.
alias clearr='clear && fastfetch' # sometimes, u just want a fresh terminal
alias vim='nvim' # i always do the wrong one :sob:
alias ambientmu='curl nightfall.ysap.sh | bash' # i like it
alias recentinstalled="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl" # show recently installed packages
alias jctl="journalctl -p 3 -xb" # Get the error messages from journalctl
alias cleanup='sudo pacman -Rns (pacman -Qtdq)' # Cleanup orphaned packages
alias please='sudo' # lol
alias bigpkg="expac -H M '%m\t%n' | sort -h | nl" # Sort installed packages according to size in MB
alias grep='grep --color=auto' # colored grep here



################
# From CachyOS #
################

alias grubup="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'