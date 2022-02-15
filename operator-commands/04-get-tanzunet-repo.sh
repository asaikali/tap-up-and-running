tanzu package repository get tanzu-tap-repository --namespace tap-install

# get more details on the repo 
tanzu package repository get tanzu-tap-repository -n tap-install

# equaivlent kubectl command 
k describe packagerepositories.packaging.carvel.dev -n tap-install