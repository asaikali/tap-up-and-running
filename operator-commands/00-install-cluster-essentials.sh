#
# Make sure you have the tanzu-cluster-essentials downloaded and expanded to your $HOME directory.
#
# Creates namespaces:
#   'tanzu-cluster-essentials',
#   'kapp-controller',
#   'secretgen-controller',
#   'tanzu-package-repo-global'
#
# Installs CRDs, e.g. kapp specific, secretgen specific, package installs, packaging-api, etc.
# Installs kapp-controller, secretgen-controller
#

export INSTALL_BUNDLE=registry.tanzu.vmware.com/tanzu-cluster-essentials/cluster-essentials-bundle@sha256:82dfaf70656b54dcba0d4def85ccae1578ff27054e7533d08320244af7fb0343
export INSTALL_REGISTRY_HOSTNAME=registry.tanzu.vmware.com
export INSTALL_REGISTRY_USERNAME=$TANZU_NET_USERNAME
export INSTALL_REGISTRY_PASSWORD=$TANZU_NET_PASSWORD
cd $HOME/tanzu-cluster-essentials
./install.sh