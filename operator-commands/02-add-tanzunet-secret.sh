#
# Adds a secret (user/pass) for the Tanzu registry, so we can download necessary binaries.
#
# We also allow the secretgen-controller to export the secret to other namespaces, too.
#

export INSTALL_REGISTRY_HOSTNAME=registry.tanzu.vmware.com
export INSTALL_REGISTRY_USERNAME=$TANZU_NET_USERNAME
export INSTALL_REGISTRY_PASSWORD=$TANZU_NET_PASSWORD

tanzu secret registry add tap-registry \
  --username ${INSTALL_REGISTRY_USERNAME} --password ${INSTALL_REGISTRY_PASSWORD} \
  --server ${INSTALL_REGISTRY_HOSTNAME} \
  --export-to-all-namespaces --yes --namespace tap-install

# to see what this command did  
kubectl get secrets -n tap-install

# to see the secert export configuration so that secretgen-controller can 
# export this secret to other namespaces in the cluster 
kubectl get secretexports.secretgen.carvel.dev -n tap-install
