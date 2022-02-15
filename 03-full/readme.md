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

