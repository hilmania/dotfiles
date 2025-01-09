# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
PATH="$PATH:/Users/hilmania/Library/Python/3.9/bin"
PATH="$PATH:/Users/hilmania/.composer/vendor/bin"
export PATH


export ZSH=$HOME/dotfiles/zsh

export HISTFILE=$ZSH/.zsh_history

export HISTSIZE=10000

export SAVEHIST=10000

setopt HIST_IGNORE_ALL_DUPS

setopt HIST_FIND_NO_DUPS

source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
  venv
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_VENV_SHOW="${SPACESHIP_VENV_SHOW=true}"
SPACESHIP_VENV_ASYNC="${SPACESHIP_VENV_ASYNC=false}"
SPACESHIP_VENV_PREFIX="${SPACESHIP_VENV_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_VENV_SUFFIX="${SPACESHIP_VENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_VENV_SYMBOL="${SPACESHIP_VENV_SYMBOL=""}"
# The (A) expansion flag creates an array, the '=' activates word splitting
SPACESHIP_VENV_GENERIC_NAMES="${(A)=SPACESHIP_VENV_GENERIC_NAMES=virtualenv venv .venv}"
SPACESHIP_VENV_COLOR="${SPACESHIP_VENV_COLOR="blue"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current virtual environment (Python).
spaceship_venv() {
  [[ $SPACESHIP_VENV_SHOW == false ]] && return

  # Check if the current directory running via Virtualenv
  [ -n "$VIRTUAL_ENV" ] || return

  local venv

  if [[ "${SPACESHIP_VENV_GENERIC_NAMES[(i)$VIRTUAL_ENV:t]}" -le \
        "${#SPACESHIP_VENV_GENERIC_NAMES}" ]]
  then
    venv="$VIRTUAL_ENV:h:t"
  else
    venv="$VIRTUAL_ENV:t"
  fi

  spaceship::section \
    --color "$SPACESHIP_VENV_COLOR" \
    --prefix "$SPACESHIP_VENV_PREFIX" \
    --suffix "$SPACESHIP_VENV_SUFFIX" \
    --symbol "$SPACESHIP_VENV_SYMBOL" \
    "$venv"
}

alias vim="nvim"
alias ll="exa -l -g --icons"
alias lla="ll -a"
alias lg="lazygit"

#export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
