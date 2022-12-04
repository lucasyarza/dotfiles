#!/usr/bin/env bash#

#If there's already a kubeconfig file in ~/.kube/config it will import that too and all the contexts
DEFAULT_KUBECONFIG_FILE="$HOME/.kube/config"
if test -f "${DEFAULT_KUBECONFIG_FILE}"
then
  export KUBECONFIG="$DEFAULT_KUBECONFIG_FILE"
fi

# Your additional kubeconfig files should be inside ~/.kube
ADD_KUBECONFIG_FILES="$HOME/.kube"
# mkdir -p "${ADD_KUBECONFIG_FILES}"

OIFS="$IFS"
IFS=$'\n'
for kubeconfigFile in `find "${ADD_KUBECONFIG_FILES}" -type f -name "*.yml" -o -name "*.yaml" -o -name "*.kubeconfig"`
do
    export KUBECONFIG="$kubeconfigFile:$KUBECONFIG"
done
IFS="$OIFS"
