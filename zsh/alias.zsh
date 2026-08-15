ALIAS_PREFIX=":"

# sqlite3
if [[ ${commands[sqlite3]} ]]; then
    alias "${ALIAS_PREFIX}sql"="sqlite3"
fi

if [[ ${commands[bc]} ]]; then
    # bc
    :calc() {
        bc <<<"$@"
    }
fi

# printing
alias hr='printf "%0.s—" {1..$(tput cols)}'

# ## Aliases
alias ~apps="cd /Applications"
alias ..="cd .."   # go back up
alias ~home="cd ~" # Go home
alias "${ALIAS_PREFIX}c"="clear -x"
alias "${ALIAS_PREFIX}cx"="tput reset"
alias "${ALIAS_PREFIX}q"="clear && exit"
alias "${ALIAS_PREFIX}src"="omz reload" # reload zshrc
alias "${ALIAS_PREFIX}where"="pwd"      # echo current working path
alias @mod-x="chmod +x"                     # make script executable
alias %=""                                  # ignore %
alias "${ALIAS_PREFIX}tc"="touch"       # Create a file `tc new.txt`

# vim
if [[ ${commands[vim]} ]]; then
    alias "${ALIAS_PREFIX}v"="vim"
    alias "${ALIAS_PREFIX}vomz"="vim ~/.zshrc" # edit .zshrc

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
    alias "${ALIAS_PREFIX}nv"="nvim"
fi

# py
if [[ ${commands[python3]} ]]; then
    alias "${ALIAS_PREFIX}py"="python3"
    alias "${ALIAS_PREFIX}pyp"="python -m pip"
fi

## Zsh
alias ~bin="cd ~/bin"

# Git
if [[ ${commands[git]} ]]; then
    alias "${ALIAS_PREFIX}g:in"="git init"
    alias "${ALIAS_PREFIX}gb:m"="git branch -m"
    alias "${ALIAS_PREFIX}gm:nf"="git merge --no-ff"
    alias "${ALIAS_PREFIX}gcln"="git clone"
    alias "${ALIAS_PREFIX}gcln:r"="git clone --recurse-submodules"
    alias "${ALIAS_PREFIX}gr:ao"="git remote add origin"

    ## push
    alias "${ALIAS_PREFIX}gpo"="git push origin"
    alias "${ALIAS_PREFIX}gsoup"="git rev-parse --abbrev-ref HEAD | git push --set-upstream origin"

    ## diff
    alias "${ALIAS_PREFIX}gdf"="git diff --color-words"
    alias "${ALIAS_PREFIX}gdft"="git difftool"

    ## switch
    alias "${ALIAS_PREFIX}gs:m"="git switch main"
    alias "${ALIAS_PREFIX}gs:mm"="git switch -m main"
    alias "${ALIAS_PREFIX}gs:"="git switch main"
    alias "${ALIAS_PREFIX}gs:m-.."="git switch -m main"
    alias "${ALIAS_PREFIX}gs:c"="git switch -c"
fi

## Lazygit

if [[ ${commands[lazygit]} ]]; then
    alias "${ALIAS_PREFIX}lz"="lazygit"

    export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml"
fi

# alacritty
if [[ $TERMINAL = "alacritty" ]]; then
    if [[ ${commands[alacritty]} ]]; then
        alias "${ALIAS_PREFIX}dtt"="alacritty msg create-window --working-directory=\"$(pwd)\""
    fi
fi

# NPM
if [[ ${commands[npm]} ]]; then
    alias "${ALIAS_PREFIX}np:r"="npm run"
    alias "${ALIAS_PREFIX}np:s"="npm start"
fi

# Notes
if [[ ${commands[hx]} ]]; then
    alias "${ALIAS_PREFIX}note"="hx ~/notes/$(date "+%y-%m-%d").md"
fi

# sudo
alias "${ALIAS_PREFIX}v:su"="sudo EDITOR=vim visudo"

# batman
if [[ ${commands[batman]} ]]; then
    alias "${ALIAS_PREFIX}man"="batman"
fi

## eza

if [[ ${commands[eza]} ]]; then
    export EZA_ICONS_AUTO=true
    export LS_COLORS="" # reset colors, conflicts with EZA theme.yml

    alias ls="eza"
    alias ll="eza -l"
    alias lz="eza"
    alias la="eza -la"
    alias l="eza -lah"
    alias lg="eza -lah --git"
    alias "${ALIAS_PREFIX}tree"="eza --tree"
fi

# zellij
if [[ ${commands[zellij]} ]]; then
    alias "${ALIAS_PREFIX}z"="zellij"
    alias "${ALIAS_PREFIX}z:a"="zellij a"   # attach session
    alias "${ALIAS_PREFIX}z:d"="zellij d"   # delete session
    alias "${ALIAS_PREFIX}z:k"="zellij k"   # kill session
    alias "${ALIAS_PREFIX}z:s"="zellij -s"  # new session with custom name
    alias "${ALIAS_PREFIX}z:l"="zellij ls"  # list sessions
    alias "${ALIAS_PREFIX}z:ac"="zellij ac" # action
    alias "${ALIAS_PREFIX}z:r"="zellij r"   # run a command in new panel
    alias "${ALIAS_PREFIX}z:p"="zellij pipe"
    alias "${ALIAS_PREFIX}z:fp"="zellij pipe -p filepicker" # open file picker

    ::zr() {
        zellij run -n '⭘' -f --height 100% --width 100% -x 0 -y 0 -- $@
    }

    # sudo
    alias "${ALIAS_PREFIX}z:su"="zellij run -n '' -f --cwd '/' --height 100% --width 100% -x 0 -y 0 -- su"

    # list
    alias "${ALIAS_PREFIX}z:ls"="zellij run -n '' -f --height 80% --width 50% -x 50% -y 0 -- eza -lah"
    alias "${ALIAS_PREFIX}z:tree"="zellij run -n '' -f --height 80% --width 40% -x 60% -y 20% -- eza --tree"

    # git
    alias "${ALIAS_PREFIX}z:lz"="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- lazygit"
    alias "${ALIAS_PREFIX}z:gd"="zellij run -n '' -f --height 90% --width 80% -x 0 -y 0 -- git diff"
    alias "${ALIAS_PREFIX}z:gdft"="zellij run -n '' -f --height 90% --width 80% -x 0 -y 0 -- git difftool"

    # pomo
    alias "${ALIAS_PREFIX}z:pomo"="zellij run -n '' -f --cwd '$HOME' --height 40% --width 45% -x 2 -y 2 -- pomo"

    # editors
    alias "${ALIAS_PREFIX}z:hx"="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- hx"
    alias "${ALIAS_PREFIX}z:nv"="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- nvim"
    alias "${ALIAS_PREFIX}z:v"="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- vim"
    alias "${ALIAS_PREFIX}z:nano"="zellij run -n '' -c -f --height 100% --width 100% -x 0 -y 0 -- nano"
fi

# BELL
alias "${ALIAS_PREFIX}bel"='echo "\a"'

# ASCII
if [[ ${commands[ascii - image - converter]} ]]; then
    alias "${ALIAS_PREFIX}asc"='ascii-image-converter'
fi

# deno
if [[ ${commands[deno]} ]]; then
    alias "${ALIAS_PREFIX}dn"="deno"
    alias "${ALIAS_PREFIX}dn:r"="deno run"
    alias "${ALIAS_PREFIX}dn:t"="deno task"
    alias "${ALIAS_PREFIX}dn:nt"="deno run --allow-net"
    alias "${ALIAS_PREFIX}dn:rd"="deno run --allow-read"
fi

# nix
if [[ ${commands[nix]} ]]; then
    alias "${ALIAS_PREFIX}nx"="nix"
    alias "${ALIAS_PREFIX}nx:rp"="nix repl"
    alias "${ALIAS_PREFIX}nx:sh"="nix-shell"

    ## disk usage
    alias "${ALIAS_PREFIX}ndu"="nix path-info -Sh /run/current-system"
fi

## store
if [[ ${commands["nix-store"]} ]]; then
    alias nx:sto='nix-store --gc --print-roots | rg "^(/nix/var|/run/\\w+-system|\\{memory|/proc)"'
fi

if [[ ${commands[nxtray]} ]]; then
    alias nxtrays="nxtray | sd '(.*) -> .*' '\$1'"
fi

# pandoc
if [[ ${commands[pandoc]} ]]; then
    alias "${ALIAS_PREFIX}pn"="pandoc"
fi

# csvlens
if [[ ${commands[csvlens]} ]]; then
    alias "${ALIAS_PREFIX}cv"="csvlens"
fi

# zsh-syntax-highlighting
if [ -f ~/.config/zsh/syntax ]; then
    source ~/.config/zsh/syntax
fi

# system

if [[ ${commands[macchina]} ]]; then
    alias "${ALIAS_PREFIX}neo"="clear && macchina"
    alias "${ALIAS_PREFIX}mak"="clear && macchina"
fi

# mermaid
if [[ ${commands[mmdc]} ]]; then
    alias "${ALIAS_PREFIX}mr"="mmdc -i"
    alias "${ALIAS_PREFIX}mr:i"="mmdc -i"
    alias "${ALIAS_PREFIX}mr:d"="mmdc -t dark -b transparent -i"
fi

# taskwarrior
if command -v task &>/dev/null; then
    alias "${ALIAS_PREFIX}tw"="task"
    alias "${ALIAS_PREFIX}tw:l"="task list"
    alias "${ALIAS_PREFIX}tw:a"="task add"
fi

# imagemagick

if [[ ${commands[magick]} ]]; then
    alias "${ALIAS_PREFIX}mg"="magick"
    alias "${ALIAS_PREFIX}mg:id"="magick identify"
    alias "${ALIAS_PREFIX}mg:idv"="magick identify -verbose"
    alias "${ALIAS_PREFIX}mg:con"="magick convert"
    alias "${ALIAS_PREFIX}mg:mog"="magick mogrify"
fi

# odin lang
if [[ ${commands[odin]} ]]; then
    alias "${ALIAS_PREFIX}od"="odin"
    alias "${ALIAS_PREFIX}o:r"="odin run ."
    alias "${ALIAS_PREFIX}o:r-"="odin run"
    alias "${ALIAS_PREFIX}o:b"="odin build ."
    alias "${ALIAS_PREFIX}o:t"="odin test ."
    alias "${ALIAS_PREFIX}o:td"="odin test . --debug"
    alias "${ALIAS_PREFIX}o:t-"="odin test"
fi
