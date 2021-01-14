
kubectl exec -it $(kubectl get pods -n elastic-system | grep elasticsearch-master | sed -n 1p | awk '{print $1}') -n elastic-system -- bin/elasticsearch-setup-passwords auto -b
kubectl create secret generic elasticsearch-pw-elastic -n elastic-system --from-literal password=YJOc4FyFgkczMbEXOHTJ
