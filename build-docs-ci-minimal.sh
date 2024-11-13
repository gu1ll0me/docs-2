#!/bin/bash

set -e

export PATH=${PATH}:${HOME}/.local/bin


make SYNC_SDK=TRUE linux
make k8s

mkdir -p docs/minio/kubernetes/upstream
cp -vr build/HEAD/k8s/html/* docs/minio/kubernetes/upstream/

mkdir -p docs/minio/linux
cp -vr build/HEAD/linux/html/* docs/minio/linux/
