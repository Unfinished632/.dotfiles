#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
alias fastfetch='clear; fastfetch'
alias fetch='fastfetch'
# alias spotify='spotify_player'
alias java-21='/usr/lib/jvm/java-21-openjdk/bin/java'
alias theclicker='sudo /home/unfinished/.cargo/bin/theclicker'

export PATH="~/scripts:$PATH"
export PATH="~/code-projects/lilbro-bot/bin/Debug/net8.0/:$PATH"
export ISAAC="~/.local/share/Steam/steamapps/compatdata/250900/pfx/drive_c/users/steamuser/"

#export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export SDL_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"

# Proton shortcut
export STEAM_COMPAT_CLIENT_INSTALL_PATH='~/.steam/steam'
export STEAM_COMPAT_DATA_PATH=$PWD
alias proton='~/.steam/steam/steamapps/common/"Proton 9.0 (Beta)"/proton'

# Add .NET Core SDK tools
export PATH="$PATH:~/.dotnet/tools"

# Add custom scripts
export PATH="$PATH:~/.local/share/bin"

# Chrome location for Flutter dev
export CHROME_EXECUTABLE="/usr/bin/chromium"

# For dart packages
export PATH="$PATH":"$HOME/.pub-cache/bin"

export PATH="$PATH:/home/unfinished/.cargo/bin"
export PATH="$PATH:~/.local/bin"

# Force app to use wayland
alias discord='discord --enable-features=UseOzonePlatform --ozone-platform=wayland'

# old prompt / default
# PS1='[\u@\h \W]\$ '

PS1='\[\e[38;5;92m\][\[\e[38;5;165m\]\u\[\e[38;5;207m\]@\[\e[38;5;165m\]\h\[\e[0m\] \[\e[38;5;198m\]\W\[\e[38;5;92m\]]\[\e[38;5;135m\]\$\[\e[0m\] '

# fixes some problems with kitty
echo -ne "\e[3 q"

eval "$(zoxide init bash)"
