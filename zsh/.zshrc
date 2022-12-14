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
  )

  # Autojump
  [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

  # node nvm
  export NVM_COMPLETION=true

  # pyenv
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"

  # gpg
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
    brew
    vi-mode
    ssh-agent
  )

  export LANG=en_US.UTF-8

# linux-end  ------------------------------------------------------------------------------------------

fi



zstyle ':omz:update' frequency 7

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# history timestamp - "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

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

# vim shell env
vim_prompt() {
  if [ ! -z $VIMRUNTIME ]; then
    echo "??? ";
  fi
}

export VIMSHELL=$(vim_prompt)

# Starship
eval "$(starship init zsh)"

# zprof # speed profiling on start

export RANGER_LOAD_DEFAULT_RC=false

# fnm
eval "$(fnm env --use-on-cd)"
