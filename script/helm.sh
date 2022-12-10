#!/bin/sh -eu

if [ $(helm list | wc -l) -le 1 ]; then
  helm install morning-night-dream-platform ./k8s --namespace=fs-morning-night-dreamer
else
  helm upgrade --force morning-night-dream-platform ./k8s --namespace=fs-morning-night-dreamer
fi
