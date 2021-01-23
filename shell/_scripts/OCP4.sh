#!/bin/bash

SERVER=$1

oc login --server=https://api.ocp4.zurich.com:6443 -u $(keychain.sh -u -s $SERVER) -p $(keychain.sh -p -s $SERVER)