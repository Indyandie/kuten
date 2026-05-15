# zmodload zsh/zprof # speed profiling on start

if [[ $OSTYPE == darwin* ]]; then

    # macos ------------------------------------------------------------------------------------------

    export PATH=$HOME/bin:/usr/local/bin:$PATH

    # Path to your oh-my-zsh installation.
    export ZSH="/Users/$USER/.oh-my-zsh"

    # plugins
    plugins=(
        alias-tips
        brew
        direnv
        git
        macos
        ripgrep
        sudo
        vi-mode
        zoxide
        zsh-autosuggestions
        zsh-syntax-highlighting
    )

    source "$ZSH/oh-my-zsh.sh"

    if [[ ${commands[pyenv]} ]]; then
        # pyenv
        export PYENV_ROOT="$HOME/.pyenv"
        command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
        eval "$(pyenv init --path)"
    fi

    # gpg
    GPG_TTY=$(tty)
    export GPG_TTY

    if [[ $GPG_SSH_CONF ]]; then
        unset SSH_AGENT_PID
        if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
            SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
            export SSH_AUTH_SOCK
        fi

        GPG_TTY=$(tty)
        export GPG_TTY

        gpg-connect-agent updatestartuptty /bye >/dev/null
        # export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
        # gpgconf --launch gpg-agent
    fi

    # brew sbin
    export PATH="/usr/local/sbin:$PATH"

    if [[ ${commands[atuin]} ]]; then
        # atuin

        # UP arrow + alt/opt
        bindkey '^[[1;3A' _atuin_search_widget
    fi

    # fnm
    if [[ ${commands[fnm]} ]]; then
        eval "$(fnm env --use-on-cd)"
    fi

# macos-end ------------------------------------------------------------------------------------------

elif [[ $OSTYPE == linux* ]]; then

    # linux  ------------------------------------------------------------------------------------------

    export PATH="$HOME/.local/bin:~/.cargo/bin:$PATH"
    export PATH="$HOME/.deno/bin:$PATH"

    export ZSH="/home/$USER/.oh-my-zsh"

    plugins=(
        alias-tips
        git
        ssh-agent
        sudo
        vi-mode
        zsh-autosuggestions
        zsh-syntax-highlighting
    )

    export LANG=en_US.UTF-8

    # gpg-agent

    unset SSH_AGENT_PID

    if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
        SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
        export SSH_AUTH_SOCK
    fi

    GPG_TTY=$(tty)
    export GPG_TTY
    gpg-connect-agent updatestartuptty /bye >/dev/null

    if [[ ${commands[Hyprland]} ]]; then
        # Hyprland
        if [[ -f "$HOME/.config/hypr/hypralias.zsh" ]]; then
            source "$HOME/.config/hypr/hypralias.zsh"
        fi

        if [[ $TTY = "/dev/tty1" ]]; then
            Hyprland
        fi
        # if [[ $XDG_CURRENT_DESKTOP = "Hyprland" ]]; then
        #     figlet "hyprland"
        # fi
    fi

    if [[ -f /etc/NIXOS ]]; then
        # https://matthewrhone.dev/nixos-npm-globally
        export PATH="$HOME/bin:$PATH"
        export PATH=~/.npm-packages/bin:$PATH
        export NODE_PATH=~/.npm-packages/lib/node_modules
    fi

    if [[ ${commands[atuin]} ]]; then
        # atuin
        # UP arrow + alt/opt
        bindkey '^[[1;5A' _atuin_search_widget
    fi

# linux-end  ------------------------------------------------------------------------------------------

fi

zstyle ':omz:update' frequency 7

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# history timestamp - "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

if [[ ${commands[hx]} ]]; then
    export EDITOR='hx' # helix editor
fi

# alias
if [[ -f "$HOME/.config/zsh/alias" ]]; then
    source "$HOME/.config/zsh/alias"
fi

# md && cd
mcd() {
    md -p "$1" && cd "$1" || exit
}

# rustc
rustbin() {
    name=$(echo "$1" | sd '\.rs' '')
    rustc --out-dir bin "$1" && "bin/$name"
}

# run in the background with logs
bgpr() {
    nohup "$1" >"$HOME/.nohuplogs" &
}

# run in the background with no logs
bgnl() {
    nohup "$1" >/dev/null 2>&1 &
}

# Starship
if [[ ${commands[starship]} ]]; then
    eval "$(starship init zsh)"
fi

# right_prompt
# remove trailing space
# https://superuser.com/questions/655607/removing-the-useless-space-at-the-end-of-the-right-prompt-of-zsh-rprompt
ZLE_RPROMPT_INDENT=0

# prompt_nix_shell_setup
export PATH="/usr/local/opt/llvm/bin:$PATH"

# zoxide
if [[ ${commands[zoxide]} ]]; then
    eval "$(zoxide init zsh)"
fi

# atuin
# eval "$(atuin init zsh)"

# Bind ctrl-r but not up arrow
if [[ ${commands[atuin]} ]]; then
    eval "$(atuin init zsh --disable-up-arrow)"
fi

# yazi

if [[ ${commands[yazi]} ]]; then
    function yaz {
        local tmp
        tmp="$(mktemp -t "yazi-cwd.XXXXX")"
        yazi "$@" --cwd-file="$tmp"
        if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
            cd -- "$cwd" || exit
        fi
        rm -f -- "$tmp"
    }
fi

# taskwarrior

if [[ ${commands[task]} ]]; then
    export TASKRC=~/.config/task/taskrc
    export TASKDATA=~/.config/task/task
fi

# ghostty

if [[ $TERMINAL = "ghostty" ]]; then
    COLORTERM=truecolor
fi
