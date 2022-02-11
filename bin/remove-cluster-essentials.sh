# commands to remove cluster essentials, as it is not documented in offical docs

kapp delete -a secretgen-controller -n tanzu-cluster-essentials
kapp delete -a kapp-controller -n tanzu-cluster-essentials
kubectl delete ns tanzu-cluster-essentials