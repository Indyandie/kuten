if [[ $OSTYPE == darwin* ]]; then
    alias diff >/dev/null && unalias diff 2>/dev/null

    # brew
    if [[ ${commands[brew]} ]]; then
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
    fi

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

    # mullvad
    alias mlv-rs="mullvad && mullvad reconnect && sleep 1 && mullvad status"

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
    if [[ ${commands[flatpak]} ]]; then
        alias flk="flatpak"
        alias flki="flatpak install"
        alias flkun="flatpak uhinstall"
        alias flks="flatpak search"
        alias flkl="flatpak list"
        alias flkup="flatpak upgrade"
    fi

    alias open="xdg-open"

    # thunar
    if [[ ${commands[thunar]} ]]; then
        alias tuna="nohup thunar >> ~/.thunar-logs &"
    fi
fi

# sqlite3
if [[ ${commands[sqlite3]} ]]; then
    alias sql="sqlite3"
fi

if [[ ${commands[bc]} ]]; then
    # bc
    xx() {
        bc <<<"$@"
    }
fi

# printing
alias hr='printf "%0.s—" {1..$(tput cols)}'

# ## Aliases
alias x="bc <<<"
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

# vim
if [[ ${commands[vim]} ]]; then
    alias v="vim"
    alias vomz="vim ~/.zshrc" # edit .zshrc

    # vim shell env
    vim_prompt() {
        if [ -n "$VIMRUNTIME" ]; then
            echo "▾ "
        fi
    }

    VIMSHELL=$(vim_prompt)
    export VIMSHELL

fi

if [[ ${commands[nvim]} ]]; then
    alias nv="nvim"
fi

# py
if [[ ${commands[python3]} ]]; then
    alias py="python3"
    alias pip="python -m pip"
fi

## Zsh
alias zbin="cd ~/bin"

# Git
if [[ ${commands[git]} ]]; then
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
fi

## Lazygit

if [[ ${commands[lazygit]} ]]; then
    alias lzg="lazygit"

    export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml"
fi

# alacritty
if [[ $TERMINAL = "alacritty" ]]; then
    if [[ ${commands[alacritty]} ]]; then
        alias dtt="alacritty msg create-window --working-directory=\"$(pwd)\""
    fi
fi

# NPM
if [[ ${commands[npm]} ]]; then
    alias npr="npm run"
    alias nps="npm start"
fi

# Notes
if [[ ${commands[hx]} ]]; then
    alias note="hx ~/notes/$(date "+%y-%m-%d").md"
fi

# sudo
alias visudo="sudo EDITOR=vim visudo"

# batman
if [[ ${commands[batman]} ]]; then
    alias man="batman"
fi

## eza

if [[ ${commands[eza]} ]]; then
    export EZA_ICONS_AUTO=true
    export LS_COLORS="" # reset colors, conflicts with EZA theme.yml

    alias ls="lz"
    alias ll="eza -l"
    alias lz="eza"
    alias la="eza -la"
    alias l="eza -lah"
    alias lg="eza -lah --git"
    alias arbol="eza --tree"
fi

# zellij
if [[ ${commands[zellij]} ]]; then
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
    alias z:su="zellij run -n '' -f --cwd '/' --height 100% --width 100% -x 0 -y 0 -- su"

    # list
    alias z:lz="zellij run -n '' -f --height 80% --width 50% -x 50% -y 0 -- eza -lah"
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
fi

# BELL
alias bell='echo "\a"'

# ASCII
if [[ ${commands[ascii - image - converter]} ]]; then
    alias aic='ascii-image-converter'
fi

# deno
if [[ ${commands[deno]} ]]; then
    alias dn="deno"
    alias dnr="deno run"
    alias dnt="deno task"
    alias dnnt="deno run --allow-net"
    alias dnrd="deno run --allow-read"
fi

# nix
if [[ ${commands[nix]} ]]; then
    alias nx="nix"
    alias nxr="nix repl"
    alias nsh="nix-shell"

    ## disk usage
    alias ndurr="nix path-info -Sh /run/current-system"
fi

## store
if [[ ${commands[nix - store]} ]]; then
    alias nxtray='nix-store --gc --print-roots | rg "^(/nix/var|/run/\\w+-system|\\{memory|/proc)"'
fi

if [[ ${commands[nxtray]} ]]; then
    alias nxtrays="nxtray | sd '(.*) -> .*' '\$1'"
fi

# pandoc
if [[ ${commands[pandoc]} ]]; then
    alias pn="pandoc"
fi

# csvlens
if [[ ${commands[csvlens]} ]]; then
    alias cvl="csvlens"
fi

# zsh-syntax-highlighting
if [ -f ~/.config/zsh/syntax ]; then
    source ~/.config/zsh/syntax
fi

# system

if [[ ${commands[macchina]} ]]; then
    alias neo="clear && macchina"
    alias maki="clear && macchina"
fi

# mermaid
if [[ ${commands[mmdc]} ]]; then
    alias mer="mmdc -i"
    alias merd="mmdc -t dark -b transparent -i"
fi

# taskwarrior
if command -v task &>/dev/null; then
    alias tw="task"
    alias twl="task list"
    alias twa="task add"
fi

# imagemagick

if [[ ${commands[magick]} ]]; then
    alias mgk="magick"
    alias mgkid="magick identify"
    alias mgkidv="magick identify -verbose"
    alias mgknv="magick convert"
    alias mgkmog="magick mogrify"
fi

# odin lang
if [[ ${commands[odin]} ]]; then
    alias :od="odin"
    alias :od-r="odin run ."
    alias :od-r-="odin run"
    alias :od-b="odin build ."
    alias :od-t="odin test ."
    alias :od-td="odin test . --debug"
    alias :od-t-="odin test"
fi
