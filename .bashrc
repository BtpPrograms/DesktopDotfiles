# Removes GUI prompt for SSH Askpass
unset SSH_ASKPASS

# Set wine prefix
export WINEPREFIX=/mnt/LinuxStorage/Wine

# Disable wine debugging
export WINEDEBUG=-all

# Add alias for steam wine
alias steam-wine='wine /mnt/LinuxStorage/Wine/drive_c/Program\ Files/Steam/Steam.exe -no-dwrite >/dev/null 2>&1 &'

# Adds color to man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# Alias ls to always use colors
alias ls="ls --color=always"

