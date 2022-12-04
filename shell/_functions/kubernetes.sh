##############################
###### kubectl LAZY LOAD #####
##############################

kubectl() {
  unset -f kubectl k9s
  source $DOTFILES_PATH/shell/_scripts/load-k8s-config.sh
  source $ZSH/plugins/kubectl/kubectl.plugin.zsh
  kubectl "$@" #This is like kubectl "$@"
}

k9s() {
  unset -f kubectl k9s
  source $DOTFILES_PATH/shell/_scripts/load-k8s-config.sh
  source $ZSH/plugins/kubectl/kubectl.plugin.zsh
  k9s "$@" #This is like kubectl "$@"
}

k9() {
  local current_dir=$(pwd)
  local kube_config=$KUBECONFIG
  if [ -f "config" ]; then
    kube_config=$current_dir/config
  fi
  k9s --kubeconfig "$kube_config"
}
