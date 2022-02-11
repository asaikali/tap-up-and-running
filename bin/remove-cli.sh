#!/bin/bash


# 
# Instructions from https://docs.vmware.com/en/Tanzu-Application-Platform/1.0/tap/GUID-uninstall.html#remove-tanzu-cli-plugins-and-associated-files-2
# 

rm -rf $HOME/tanzu/cli        # Remove previously downloaded cli files
rm /usr/local/bin/tanzu  # Remove CLI binary (executable)
rm -rf ~/.config/tanzu/       # current location # Remove config directory
rm -rf ~/.tanzu/              # old location # Remove config directory
rm -rf ~/.cache/tanzu         # remove cached catalog.yaml
rm -rf ~/Library/Application\ Support/tanzu-cli/* # Remove plug-ins