#!/bin/sh -eu

apt-get install wget

GO_VERSION=1.19.3

GO_TAR=go${GO_VERSION}.linux-amd64.tar.gz

sudo rm -rf /usr/local/go/

wget https://dl.google.com/go/${GO_TAR}

sudo tar -C /usr/local -xzf ${GO_TAR}

rm -rf ${GO_TAR}

echo PATH=$PATH:/usr/local/go

go install go.mozilla.org/sops/v3/cmd/sops@latest

sops --decrypt --in-place k8s/templates/secret.yaml
