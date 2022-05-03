kubectl apply -f example-rabbitmq-cluster-service-instance.yaml

kubectl get rabbitmqclusters

# get the service reference to pass into the next command 
tanzu service instance list -owide


tanzu apps workload create rmq-sample-app-usecase-1 \
--git-repo https://github.com/sample-accelerators/rabbitmq-sample \
--git-branch main \
--git-tag tap-1.0 \
--type web \
--annotation autoscaling.knative.dev/minScale=1 \
--service-ref "rmq=rabbitmq.com/v1beta1:RabbitmqCluster:default:example-rabbitmq-cluster-1"