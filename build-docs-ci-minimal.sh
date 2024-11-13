#!/bin/bash

set -ex

export PATH=${PATH}:${HOME}/.local/bin


make SYNC_SDK=TRUE linux
make windows macos container k8s openshift eks aks gke

mkdir -p docs/minio/kubernetes/upstream
cp -vr build/HEAD/k8s/html/* docs/minio/kubernetes/upstream/

mkdir -p docs/minio/kubernetes/eks
cp -vr build/HEAD/eks/html/* docs/minio/kubernetes/eks/


mkdir -p docs/minio/kubernetes/gke
cp -vr build/HEAD/gke/html/* docs/minio/kubernetes/gke/

mkdir -p docs/minio/kubernetes/aks
cp -vr build/HEAD/aks/html/* docs/minio/kubernetes/aks/

mkdir -p docs/minio/kubernetes/openshift
cp -vr build/HEAD/openshift/html/* docs/minio/kubernetes/openshift/

mkdir -p docs/minio/container
cp -vr build/HEAD/container/html/* docs/minio/container/

mkdir -p docs/minio/linux
cp -vr build/HEAD/linux/html/* docs/minio/linux/

mkdir -p docs/minio/macos
cp -vr build/HEAD/macos/html/* docs/minio/macos/

mkdir -p docs/minio/windows
cp -vr build/HEAD/windows/html/* docs/minio/windows/
