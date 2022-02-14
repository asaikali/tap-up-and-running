# commands to remove cluster essentials, as it is not documented in offical docs

kapp delete -a secretgen-controller -n tanzu-cluster-essentials
kapp delete -a kapp-controller -n tanzu-cluster-essentials
kubectl delete APIService v1alpha1.data.packaging.carvel.dev
kubectl delete ns tanzu-cluster-essentials
#kubectl delete ns kapp-controller
#kubectl delete ns tanzu-package-repo-global
#kubectl delete ns tanzu-cluster-essentials 