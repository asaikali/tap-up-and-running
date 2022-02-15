# Import workload backstage catalog info into TAP gui 

1. Log into TAP GUI
2. on the software catalog page click on the register button
3. use https://github.com/asaikali/tanzu-java-web-app/tree/main/catalog/catalog-info.yaml for the url in the form 
4. follow the rest of the instructions in the wizard

# deploy the workload 

1. execute the command `tanzu apps workload create -f developer/workload.yaml` follow prompts for the cli

2. execute the command `tanzu apps workload tail tanzu-java-web-app --since 1h` to see what the supply chain is doing you will see 
   a lot of output scroll by on the screen. eventually if it all works you will see the workload and it's url in the tap-gui 
