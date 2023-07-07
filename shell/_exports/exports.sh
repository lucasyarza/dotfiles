export DEFAULT_USER="ldeyarza"
export GPG_TTY=$(tty)

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export EDITOR='vim'

export PYTHON3_HOST_PROG='/Users/ldeyarza/.config/lvim/.venv/bin/python3'

# Set fzf installation directory path
export FZF_BASE=/usr/bin/fzf

export GOPATH="$HOME/go"
# export GOROOT="$HOME/go"

paths=(
  "/usr/local/opt/openjdk@17/bin"
  "$GOROOT/bin"
  "/usr/bin"
  "/bin"
  "/usr/sbin"
  "/sbin"
  "/usr/local/bin"
  "$HOME/.dotfiles/shell/_scripts"
  "$HOME/.krew/bin"
  "$HOME/.local/bin"
)

PATH=$(
  IFS=":"
  echo "${paths[*]}"
)

export PATH

