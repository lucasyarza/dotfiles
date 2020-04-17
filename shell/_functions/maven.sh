##########################
###### mvn LAZY LOAD #####
##########################
mvn() {
  unset -f mvn
  source $ZSH/plugins/mvn/mvn.plugin.zsh
  mvn "$@"
}