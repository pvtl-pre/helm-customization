#!/bin/bash

########################
# include the magic
########################
. ../demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pei "cp -R ../helloworld ."
pe "cat kustomization.yaml"
pe "kustomize build -o helloworld/templates"
pe "cat helloworld/templates/v1_pod_helloworld.yaml"
pe "rm helloworld/templates/pod.yaml"
pe "cat values.yaml"
pe "cp values.yaml helloworld/values.yaml"
pe "helm install helloworld ./helloworld"
pe "kubectl logs helloworld"
pe "helm delete helloworld"
pei "rm -rf helloworld"