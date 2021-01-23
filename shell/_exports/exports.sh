export DEFAULT_USER="ldeyarza"
export GPG_TTY=$(tty)

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export EDITOR='vim'

# >>> Proxy <<<
# export no_proxy=""

# Set fzf installation directory path
export FZF_BASE=/usr/bin/fzf

export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home'
export GOPATH="$HOME/go"
export GO111MODULE=on

paths=(
  # "$JAVA_HOME/bin"
  "$GOPATH/bin"
  "/usr/bin"
  "/bin"
  "/usr/sbin"
  "/sbin"
  "/usr/local/bin"
  "$HOME/.dotfiles/shell/_scripts"
  "$HOME/.krew/bin"
)

PATH=$(
  IFS=":"
  echo "${paths[*]}"
)

export PATH