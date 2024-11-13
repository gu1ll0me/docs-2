#!/bin/bash

set -ex

branch=$(git branch --show-current)

export PATH=${PATH}:${HOME}/.local/bin


make SYNC_SDK=TRUE linux
make windows macos container k8s openshift eks aks gke

mkdir -p docs/minio/kubernetes/upstream
cp -vr build/${branch}/k8s/html/* docs/minio/kubernetes/upstream/

mkdir -p docs/minio/kubernetes/eks
cp -vr build/${branch}/eks/html/* docs/minio/kubernetes/eks/


mkdir -p docs/minio/kubernetes/gke
cp -vr build/${branch}/gke/html/* docs/minio/kubernetes/gke/

mkdir -p docs/minio/kubernetes/aks
cp -vr build/${branch}/aks/html/* docs/minio/kubernetes/aks/

mkdir -p docs/minio/kubernetes/openshift
cp -vr build/${branch}/openshift/html/* docs/minio/kubernetes/openshift/

mkdir -p docs/minio/container
cp -vr build/${branch}/container/html/* docs/minio/container/

mkdir -p docs/minio/linux
cp -vr build/${branch}/linux/html/* docs/minio/linux/

mkdir -p docs/minio/macos
cp -vr build/${branch}/macos/html/* docs/minio/macos/

mkdir -p docs/minio/windows
cp -vr build/${branch}/windows/html/* docs/minio/windows/
