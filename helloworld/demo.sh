#!/bin/bash

########################
# include the magic
########################
. ../demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pei "ls -lR"
pe "cat templates/pod.yaml"
pe "cat values.yaml"
pe "helm install helloworld ."
pe "kubectl logs helloworld"
pei "helm delete helloworld"