# CL bro
alias today="date -I date || date -I"

# printing

# horizontal line
# alias hr="echo '\n' && printf %'$COLUMNS's | tr ' ' '—'"
# alias hr="echo '\n' && printf %'`tput cols`'s | tr ' ' '—'"
# alias hr="echo {1..$(tput cols)} | sed -E 's/[0-9]+ {0,1}/—/g'"
# alias hr='echo {1..`tput cols`} | tr -s "[:digit:]" "—" | tr -d " "'
# for som reason using echo require a src for the column to be caculated accurately
alias hr='printf "%0.s—" {1..`tput cols`}'

if [[ $OSTYPE == darwin* ]]; then

    # macos
    alias mql="quick-look"
    alias tb="tab"
    alias tv="vsplit-tab"
    alias opn="ofd"
    alias fnd="cdf"
    alias poweroff="sudo shutdown -h now"
    alias reboot="sudo reboot"
    alias oa="open -a"
    alias macupdate="sudo nvram manufacturing-enter-picker=false && softwareupdate -i -r"
    alias linux-picker="sudo nvram manufacturing-enter-picker=true"
    alias backitup="tmutil startbackup -b | noti -t 'BIU' -m -"
    alias sleepy="pmset sleepnow"

    # diskutil
    alias duck="diskutil"
    alias eject="diskutil unmountDisk"

    ## Pico 8
    alias pc8="cd ~/Library/Application\ Support/pico-8"
    alias pico8="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/pico-8"

    # helix
    alias vx="hx"
    alias he="hx"

    # sqlite3
    alias sql="sqlite3"

    # mullvad
    alias mlv-rs="mullvad && mullvad reconnect && sleep 1 && mullvad status"

elif [[ $OSTYPE == linux* ]]; then

    alias pacman="sudo pacman"

    # Hibernate
    alias sleepy="systemctl suspend"

    # Hyprland
    if [[ $XDG_CURRENT_DESKTOP = Hyprland ]]; then
        # stuff to do
        alias reload-dunst="killall dunst && nohup dunst >& /dev/null &"
    fi

    # flatpak
    alias flk="flatpak"
    alias flki="flatpak install"
    alias flkun="flatpak uhinstall"
    alias flks="flatpak search"
    alias flkl="flatpak list"
    alias flkup="flatpak upgrade"
fi

# Brew
alias br="brew"
alias bri="brew install"
alias brik="brew install --cask"
alias brui="brew uninstall"
alias bruik="brew uninstall --cask"
alias brup="brew upgrade"
alias brupk="hr && echo '   start upgrade casks' && hr && brew upgrade --cask --greedy && hr && echo '   end cask upgrade' && hr"
alias bro="brew outdated --greedy"
alias brok="brew outdated --cask"
alias bub="bubu && brupk" # brew upgrade

# ## Aliases
alias x="bc <<<"
alias vomz="vim ~/.zshrc" # edit .zshrc
alias apps="cd /Applications"
alias ..="cd .."       # go back up
alias home="cd ~"      # Go home
alias cl="clear"       # clear the screen
alias src="omz reload" # reload zshrc
alias pt="pwd"         # echo current working path
alias zhe="chmod +x"   # make script executable
alias %=""             # ignore %
alias tc="touch"       # Create a file `tc new.txt`
alias kan="taskell"    # Kanban board

# vim
alias v="vim"
alias cll="cl && exit"

# nvim
alias nv="nvim"

# py
alias py="python3"
alias pip="python -m pip"

## Zsh
alias zbin="cd ~/bin"

# Git
alias gin="git init"
alias gbm="git branch -m"
alias gmnf="git merge --no-ff"
alias gcln="git clone"
alias grao="git remote add origin"

## push
alias gpo="git push origin"
alias gsoup="git rev-parse --abbrev-ref HEAD | git push --set-upstream origin"

## diff
alias gdcw="git diff --color-words"
alias gdf="git diff --color-words | diff-so-fancy"

## switch
alias gsm="git switch main"
alias gsmm="git switch -m main"
alias gs-="git switch main"
alias gsm-..="git switch -m main"
alias gsc="git switch -c"

## Lazygit

alias lzg="lazygit"

# alacritty
alias dtt="alacritty msg create-window --working-directory=\"$(pwd)\""

# vscodium
alias cod="codium"
alias co="code" # open in vs code (req shell command install)

# NPM
alias npr="npm run"
alias nps="npm start"

# Autojump
alias aju="autojump"

# Notes
alias note="hx ~/notes/$(date "+%y-%m-%d").md"

# sudo
alias visudo="sudo EDITOR=vim visudo"

# batman
alias man="batman"

## eza

export EZA_ICONS_AUTO=true
export LS_COLORS="di=35;4;1;3:ex=31;1;3:fi=37;3:ln=94;1;3;4"
export EZA_COLORS="lp=35;3;4:*.md=92;3:uu=33;1;3:ur=32;3:uw=33:ux=31;1;3:ue=31;3:gr=32;3:gw=33:gx=31;1;3:tr=32;3:tw=33:tx=31;1;3:da=90:nb=37;3;2:nk=37;3:nm=96;1:ng=31;1;3:do=32;3:im=96;3:vi=36;1"

alias lz="eza"
alias la="eza -la"
alias l="eza -lah"
alias l="eza -lah"
alias lg="eza -lah --git"
alias tree="eza --tree"

# zellij
alias zj="zellij"
alias zja="zellij a"   # attach session
alias zjd="zellij d"   # delete session
alias zjk="zellij k"   # kill session
alias zjs="zellij -s"  # new session with custom name
alias zjl="zellij ls"  # list sessions
alias zjac="zellij ac" # action
alias zjr="zellij r"   # run a command in new panel
alias zpipe="zellij pipe"
alias zjp="zellij pipe -p filepicker" # open file picker

# BELL
alias bell='echo "\a"'

# ASCII
alias aic='ascii-image-converter'

# deno

alias dn="deno"
alias dnr="deno run"
alias dnt="deno task"
alias dnnt="deno run --allow-net --watch"
alias dnrd="deno run --allow-net"

# nix

alias nx="nix"
alias nxr="nix repl"
alias nsh="nix-shell"

