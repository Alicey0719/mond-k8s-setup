#!/bin/sh
set -eu

if [[ `id -u` -ne 0 ]]; then
	    echo "Please run as root"
	        exit 1
fi


kubeadm init \
	--kubernetes-version=1.30.3 \
	--service-dns-domain=mond-k8s.alicey.dev \
	--pod-network-cidr=192.168.0.0/16

