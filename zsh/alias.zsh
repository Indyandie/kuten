if [[ $OSTYPE == darwin* ]]; then
    alias diff >/dev/null && unalias diff 2>/dev/null

    # brew
    alias br="brew"
    alias bri="brew install"
    alias brik="brew install --cask"
    alias brui="brew uninstall"
    alias bruik="brew uninstall --cask"
    alias brup="brew upgrade"

    alias brupk="hr && \
    echo '   start upgrade casks' && hr && \
    brew upgrade --cask --greedy && \
    hr && echo '   end cask upgrade' && \
    hr"

    alias bro="brew outdated --greedy"
    alias brok="brew outdated --cask"
    alias bub="bubu && brupk" # brew upgrade

    # date
    alias today="date -I date"

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

    # sqlite3
    alias sql="sqlite3"

    # mullvad
    alias mlv-rs="mullvad && mullvad reconnect && sleep 1 && mullvad status"

    ## lazygit
    export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml"

    alias tac="tail -r" # print lines reversed

elif [[ $OSTYPE == linux* ]]; then

    # date
    alias today="date -I"

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

    alias open="xdg-open"

    # thunar
    alias tuna="nohup thunar >> ~/.thunar-logs &"
fi

# printing
alias hr='printf "%0.s—" {1..$(tput cols)}'

# ## Aliases
alias x="bc <<<"
alias vomz="vim ~/.zshrc" # edit .zshrc
alias apps="cd /Applications"
alias ..="cd .."  # go back up
alias home="cd ~" # Go home
alias cl="clear -x"
alias clx="tput reset"
alias cll="cl && exit"
alias src="omz reload" # reload zshrc
alias pt="pwd"         # echo current working path
alias zhe="chmod +x"   # make script executable
alias %=""             # ignore %
alias tc="touch"       # Create a file `tc new.txt`
alias kan="taskell"    # Kanban board

# vim
alias v="vim"
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
alias cln="git clone"
alias clnr="git clone --recurse-submodules"
alias grao="git remote add origin"

## push
alias gpo="git push origin"
alias gsoup="git rev-parse --abbrev-ref HEAD | git push --set-upstream origin"

## diff
alias gdf="git diff --color-words"
alias gdft="git difftool"

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

# Notes
alias note="hx ~/notes/$(date "+%y-%m-%d").md"

# sudo
alias visudo="sudo EDITOR=vim visudo"

# batman
alias man="batman"

## eza

export EZA_ICONS_AUTO=true
export LS_COLORS="" # reset colors, conflicts with EZA theme.yml

alias lz="eza"
alias la="eza -la"
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

zr() {
    zellij run -n '⭘' -f --height 100% --width 100% -x 0 -y 0 -- $@
}

# sudo
alias su:z="zellij run -n '' -f --cwd '/' --height 100% --width 100% -x 0 -y 0 -- su"

# list
alias lz:z="zellij run -n '' -f --height 80% --width 50% -x 50% -y 0 -- eza -lah"
alias tree:z="zellij run -n '' -f --height 80% --width 40% -x 60% -y 20% -- eza --tree"

# git
alias lzg:z="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- lazygit"
alias gd:z="zellij run -n '' -f --height 90% --width 80% -x 0 -y 0 -- git diff"
alias gdft:z="zellij run -n '' -f --height 90% --width 80% -x 0 -y 0 -- git difftool"

# pomo
alias pomo:z="zellij run -n '' -f --cwd '$HOME' --height 40% --width 45% -x 2 -y 2 -- pomo"

# editors
alias hx:z="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- hx"
alias nv:z="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- nvim"
alias v:z="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- vim"
alias nano:z="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- nano"

# BELL
alias bell='echo "\a"'

# ASCII
alias aic='ascii-image-converter'

# deno
alias dn="deno"
alias dnr="deno run"
alias dnt="deno task"
alias dnnt="deno run --allow-net"
alias dnrd="deno run --allow-read"

# nix
alias nx="nix"
alias nxr="nix repl"
alias nsh="nix-shell"

## disk usage
alias ndurr="nix path-info -Sh /run/current-system"

## store
alias nxtray='nix-store --gc --print-roots | rg "^(/nix/var|/run/\\w+-system|\\{memory|/proc)"'
alias nxtrays="nxtray | sd '(.*) -> .*' '\$1'"

# pandoc
alias pn="pandoc"

# csvlens
alias cvl="csvlens"

# zsh-syntax-highlighting
if [ -f ~/.config/zsh/syntax ]; then
    source ~/.config/zsh/syntax
fi

# system

alias neo="clear && macchina 2>/dev/null || neofetch 2>/dev/null"
alias maki="clear && macchina"

# mermaid
alias mer="mmdc -i"
alias merd="mmdc -t dark -b transparent -i"

# taskwarrior
if command -v task &>/dev/null; then
    alias tw="task"
    alias twl="task list"
    alias twa="task add"
fi

# imagemagick

alias mgk="magick"
alias mgkid="magick identify"
alias mgkidv="magick identify -verbose"
alias mgknv="magick convert"
alias mgkmog="magick mogrify"
