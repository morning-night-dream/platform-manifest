#!/bin/sh -eu

helm upgrade --install morning-night-dream-platform ./k8s --namespace=fs-morning-night-dreamer --values ./k8s/env/prod.yaml
