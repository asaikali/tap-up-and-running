#
# Inspect Tanzu packages
#

# tanzu cli to get all installed packages 
tanzu package installed get tap -n tap-install

# equivalent kubectl command
kubectl get packageinstalls -n tap-install