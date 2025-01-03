# zmodload zsh/zprof # speed profiling on start

if [[ $OSTYPE == darwin* ]]; then

    # macos ------------------------------------------------------------------------------------------

    export PATH=$HOME/bin:/usr/local/bin:$PATH

    # Path to your oh-my-zsh installation.
    export ZSH="/Users/$USER/.oh-my-zsh"

    # plugins
    plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
        deno
        macos
        sudo
        brew
        vi-mode
        rust
        ripgrep
        yarn
        zoxide
        # nix-zsh-completions
    )

    source "$ZSH/oh-my-zsh.sh"

    # pyenv
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"

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

    # atuin

    # UP arrow + alt/opt
    bindkey '^[[1;3A' _atuin_search_widget

# macos-end ------------------------------------------------------------------------------------------

elif [[ $OSTYPE == linux* ]]; then

    # linux  ------------------------------------------------------------------------------------------

    export PATH="$HOME/.local/bin:~/.cargo/bin:$PATH"
    export PATH="$HOME/.deno/bin:$PATH"

    export ZSH="/home/$USER/.oh-my-zsh"

    plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
        deno
        sudo
        vi-mode
        ssh-agent
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

    # Hyprland
    # if [[ $XDG_CURRENT_DESKTOP = Hyprland ]]; then
    # stuff to do
    # fi

    if [[ -f /etc/NIXOS ]]; then
        # https://matthewrhone.dev/nixos-npm-globally
        export PATH="$HOME/bin:$PATH"
        export PATH=~/.npm-packages/bin:$PATH
        export NODE_PATH=~/.npm-packages/lib/node_modules
    fi

    # atuin
    # UP arrow + alt/opt
    bindkey '^[[1;5A' _atuin_search_widget

# linux-end  ------------------------------------------------------------------------------------------

fi

zstyle ':omz:update' frequency 7

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# history timestamp - "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# export EDITOR='vim'
export EDITOR='hx' # helix editor

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

# vim shell env
vim_prompt() {
    if [ -n "$VIMRUNTIME" ]; then
        echo "▾ "
    fi
}

# bc
xx() {
    bc <<<"$@"
}

VIMSHELL=$(vim_prompt)
export VIMSHELL

# Starship
if command -v starship &>/dev/null; then
    eval "$(starship init zsh)"
fi

# right_prompt
# remove trailing space
# https://superuser.com/questions/655607/removing-the-useless-space-at-the-end-of-the-right-prompt-of-zsh-rprompt
ZLE_RPROMPT_INDENT=0

# fnm
if command -v fnm &>/dev/null; then
    eval "$(fnm env --use-on-cd)"
fi

# prompt_nix_shell_setup
export PATH="/usr/local/opt/llvm/bin:$PATH"

# zoxide
if command -v zoxide &>/dev/null; then
    eval "$(zoxide init zsh)"
fi

# atuin
# eval "$(atuin init zsh)"

# Bind ctrl-r but not up arrow
eval "$(atuin init zsh --disable-up-arrow)"

# yazi

function yaz {
    local tmp
    tmp="$(mktemp -t "yazi-cwd.XXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd" || exit
    fi
    rm -f -- "$tmp"
}

# taskwarrior

export TASKRC=~/.config/task/taskrc
export TASKDATA=~/.config/task/task
