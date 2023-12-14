# zmodload zsh/zprof # speed profiling on start

if [[ $OSTYPE == darwin* ]] then

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
    # nix-zsh-completions
  )

  source $ZSH/oh-my-zsh.sh

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
      export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
    fi
    export GPG_TTY=$(tty)
    gpg-connect-agent updatestartuptty /bye >/dev/null
    # export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    # gpgconf --launch gpg-agent
  fi

  # brew sbin
  export PATH="/usr/local/sbin:$PATH"
  
# macos-end ------------------------------------------------------------------------------------------

elif [[ $OSTYPE == linux* ]] then

# linux  ------------------------------------------------------------------------------------------

  export PATH=$HOME/.local/bin:$PATH

  export ZSH="/home/$USER/.oh-my-zsh"

  plugins=(
    git
    zsh-autosuggestions 
    zsh-syntax-highlighting
    deno
    sudo
    vi-mode
    # ssh-agent
  )

  export LANG=en_US.UTF-8

  # gpg-agent
 
  unset SSH_AGENT_PID

  if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
  fi
  export GPG_TTY=$(tty)
  gpg-connect-agent updatestartuptty /bye >/dev/null

  # Hyprland
  if [[ $XDG_CURRENT_DESKTOP = Hyprland ]]; then
    # stuff to do
  fi
# linux-end  ------------------------------------------------------------------------------------------

fi



zstyle ':omz:update' frequency 7

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# history timestamp - "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# alias
source ~/.alias

# ranger shell indicator
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

# md && cd
mcd() {
  md -p $1 && cd $1
}

# rustc
rustbin(){
  rustc --out-dir bin "$1.rs" && "bin/$1"
}

# run in the background with logs
bgpr(){
  nohup $1 > "$HOME/.nohuplogs" &
}

# run in the background with no logs
bgnl(){
  nohup $1 > /dev/null 2>&1 &
}

# vim shell env
vim_prompt() {
  if [ ! -z $VIMRUNTIME ]; then
    echo "▾ ";
  fi
}

# bc
xx() {
  bc <<< "$@"
}

export VIMSHELL=$(vim_prompt)

# Starship
if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

# zprof # speed profiling on start

export RANGER_LOAD_DEFAULT_RC=false

# fnm
if command -v fnm &> /dev/null; then
  eval "$(fnm env --use-on-cd)"
fi

# prompt_nix_shell_setup
export PATH="/usr/local/opt/llvm/bin:$PATH"

# zoxide
if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

