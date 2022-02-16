#
# Inspect the package repositories installed in your Kubernetes cluster.
#

# get more details on the repo 
tanzu package repository get tanzu-tap-repository -n tap-install

# equaivlent kubectl command 
kubectl describe packagerepositories.packaging.carvel.dev -n tap-install