##############################
###### kubectl LAZY LOAD #####
##############################

kubectl() {
  unset -f kubectl
  source $ZSH/plugins/kubectl/kubectl.plugin.zsh
  source < (kubectl completion zsh)
  kubectl "$@"
}

_ctxkubeconfig_complete() {
      if [ -z "$_KUBECONFG_COMPLETE_PATH" ]; then
          _KUBECONFG_COMPLETE_PATH="$(ls ~/.kube | grep kubeconfig | fzf --height=40% --layout=reverse --info=inline --border --margin=1 --padding=1)"
      fi
      local opts="$_KUBECONFG_COMPLETE_PATH"
      local cur=${COMP_WORDS[COMP_CWORD]}
      COMPREPLY=($(compgen -W "$opts" -- "$cur"))
}

ctxkubeconfig() {
  local kubefile="$HOME/.kube/$1"
  export KUBECONFIG="$kubefile"
  echo "$kubefile" > ~/.kubeconfig
}

complete -F _ctxkubeconfig_complete ctxkubeconfig

k9() {
  local current_dir=$(pwd)
  local kube_config=$KUBECONFIG
  if [ -f "config" ]; then
    kube_config=$current_dir/config
  fi
  k9s --kubeconfig "$kube_config"
}
