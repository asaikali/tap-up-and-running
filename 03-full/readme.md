# All K8s Distributions

1. TAP includes a collection of daemon sets, envoy and appliveview. If your
   worker nodes do not have enough free vCPU then scheduling of some 
   daemonsets will fail. Make sure to use worker nodes with at least 
   4 vCPU to give enough room for a demo environment. 

# EKS Specific install notes  

1. AWS ECR registry only issues short lived credentials. This is difficult to setup with Tanzu Build Service. 
   Highly recommend you use an alternate container registry to ECR for this bootcamp if you want the 
   easy happy path. For example you can azure Azure Contaire registry.

2. EKS will give you a CNAME for the external loadbalancer in the current configuration we 
   are using. You can configure a CNAME alias in your DNS that point to the CNAME returned 
   from the command `kubectl get service/envoy -n tanzu-system-ingress`

# GKE Specific install notes 

1. The GKE control plane seems to perform aggresive rate limiting against
   the api-server. Make sure to use a regional GKE cluster not a zonal
   GKE cluster.

