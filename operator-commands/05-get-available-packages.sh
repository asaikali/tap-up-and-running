#
# Inspect what other available packages we have in this repository.
#

# get all available packages 
tanzu package available list --namespace tap-install

# kubectl equivalent 
kubectl get packages -n tap-install
