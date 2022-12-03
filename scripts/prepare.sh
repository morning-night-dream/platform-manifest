#!/bin/sh -eu

apt-get install wget > /dev/null

GO_VERSION=1.19.3

GO_TAR=go${GO_VERSION}.linux-amd64.tar.gz

wget --quiet https://dl.google.com/go/${GO_TAR}

sudo tar -C /usr/local -xzf ${GO_TAR}

export PATH=$PATH:/usr/local/go:/usr/local/go/bin

go install go.mozilla.org/sops/v3/cmd/sops@latest

sops --decrypt --in-place k8s/templates/secret.yaml
