export DEFAULT_USER="ldeyarza"
export GPG_TTY=$(tty)

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export EDITOR='vim'

# >>> Proxy <<<
# export no_proxy=""

# Set fzf installation directory path
export FZF_BASE=/usr/bin/fzf

# export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home'
export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"

paths=(
  # "$JAVA_HOME/bin"
  "$GOROOT/bin"
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
