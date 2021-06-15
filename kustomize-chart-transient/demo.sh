#!/bin/bash

########################
# include the magic
########################
. ../demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pei "cp -R ../helloworld ."
pei "ls -lR"
pe "cd kustomize"
pe "helm install helloworld ../helloworld --post-renderer ./kustomize --debug --dry-run"
pe "cat kustomize"
pe "cat kustomization.yaml"
pe "helm install helloworld ../helloworld --post-renderer ./kustomize"
pe "kubectl logs helloworld"
pe "helm delete helloworld"
pei "rm -rf ../helloworld"