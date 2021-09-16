#!/bin/bash
if [ ! -e owscloud.net.key ]
then
        echo "Certificate .key missing - Aborting"
        exit 2
fi
if [ ! -e owscloud.net.crt ]
then
        echo "Certificate .crt missing - Aborting"
        exit 2
fi
if [ -z "$1" ]
then
        echo "Missing Namespace - Aborting"
        exit 2
fi
## after validation, will create a secret using the certificates ###
kubectl create secret tls owscloud-cert --namespace $1 --key owscloud.net.key --cert owscloud.net.crt

### Installing nginx ingress controller ###
#helm install ingress-$1 ingress-nginx/ingress-nginx --namespace $1 --set controller.replicaCount=2 --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux

### listing the ingress Public IP if metallb setup ##
kubectl --namespace $1 get services -o wide
