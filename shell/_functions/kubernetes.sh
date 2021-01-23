#########################
###### OC LAZY LOAD #####
#########################
oc() {
  unset -f oc
  source <(oc completion zsh)

  unset -f kubectl
  source $ZSH/plugins/kubectl/kubectl.plugin.zsh
  source <(kubectl completion zsh)
  
  oc "$@"
}

##############################
###### kubectl LAZY LOAD #####
##############################

kubectl() {
  unset -f kubectl
  source $ZSH/plugins/kubectl/kubectl.plugin.zsh
  source <(kubectl completion zsh)
  kubectl "$@"
}


# >>> Change Context in OC <<<
function ocp() {
  local namespace="$(oc get projects --no-headers | awk '{print $1}' | fzf)"
  oc project $namespace
  zle accept-line 2>/dev/null || true
}

zle     -N   ocp
bindkey '^k' ocp

