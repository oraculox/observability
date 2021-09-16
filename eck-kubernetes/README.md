## documentation https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-orchestrating-elastic-stack-applications.html


kubectl create -f https://download.elastic.co/downloads/eck/1.7.1/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/1.7.1/operator.yaml

then elastic;
https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-elasticsearch.html

then kibana;
https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-kibana.html

then apm;
https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-apm-eck-managed-es.html


then port-forward to test;
kubectl port-forward service/quickstart-kb-http --address 0.0.0.0 5601

