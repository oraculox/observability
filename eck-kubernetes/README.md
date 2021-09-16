### Deploying StorageClass  ## https://github.com/rancher/local-path-provisioner
'wget https://raw.githubusercontent.com/rancher/local-path-provisioner/master/deploy/local-path-storage.yaml'  
edit 'local-patch-storage.yaml' and change "/opt/local-path-provisioner" to your NFS mount point, then apply
'kubectl apply -f local-path-storage.yaml'  

### Deploying Metric Server ## https://github.com/kubernetes-sigs/metrics-server  
'kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yamlæ  
to test run; 'kubectl top node' or 'kubectl top pod'

##### documentation https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-orchestrating-elastic-stack-applications.html

'kubectl create -f https://download.elastic.co/downloads/eck/1.7.1/crds.yaml'  
'kubectl apply -f https://download.elastic.co/downloads/eck/1.7.1/operator.yaml'  

then deploy elastic;  
https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-elasticsearch.html

then deploy kibana;  
https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-kibana.html

then deploy apm;  
https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-apm-eck-managed-es.html


then port-forward to test;  
kubectl port-forward service/quickstart-kb-http --address 0.0.0.0 5601

#### Deploying Ingress  

with '<cert>.key' and '<cert>.crt' in place, run:  
chmod +x create-tls-secret.sh
./create-tls-secret.sh <namespace> *(namespace where you want to create the secret with TLS)*  

