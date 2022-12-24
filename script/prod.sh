#!/bin/sh -eu

helm upgrade --install morning-night-dream-platform ./k8s --namespace=fs-morning-night-dreamer --values ./env/prod.yaml
