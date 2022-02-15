#
# See https://docs.vmware.com/en/Tanzu-Application-Platform/1.0/tap/GUID-install-components.html#setup
#
# You need to set the values for your APPS container registry 
#
export APPS_REGISTRY_HOSTNAME=$ACR_HOSTNAME
export APPS_REGISTRY_USERNAME=$ACR_USERNAME
export APPS_REGISTRY_PASSWORD=$ACR_PASSWORD

tanzu secret registry add registry-credentials \
  --server ${APPS_REGISTRY_HOSTNAME} \
  --username ${APPS_REGISTRY_USERNAME} --password ${APPS_REGISTRY_PASSWORD} \
  --namespace default 
