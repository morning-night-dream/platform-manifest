#!/bin/sh -eu

NAME_SPACE=fs-morning-night-dreamer

if [ $(helm list --namespace "${NAME_SPACE}" | wc -l) -le 1 ]; then
  helm install morning-night-dream-platform ./k8s --namespace=${NAME_SPACE}
else
  helm upgrade morning-night-dream-platform ./k8s --namespace=${NAME_SPACE}
fi
