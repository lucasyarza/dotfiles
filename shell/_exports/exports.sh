export DEFAULT_USER="ldeyarza"
export GPG_TTY=$(tty)

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export EDITOR='vim'

# >>> Proxy <<<
export no_proxy=""

# Set fzf installation directory path
export FZF_BASE=/usr/bin/fzf

export JAVA_HOME='/usr/lib/jvm/default'
export GOPATH="$HOME/.go"

paths=(
  "$JAVA_HOME/bin"
  "$GOPATH/bin"
  "/usr/local/sbin"
  "/usr/local/bin"
  "/usr/bin"
)

PATH=$(
  IFS=":"
  echo "${paths[*]}"
)

export PATH