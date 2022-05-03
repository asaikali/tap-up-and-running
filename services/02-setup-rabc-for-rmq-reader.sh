kubectl apply -f rabbitmqcluster-reader.yaml

# test that service list shows up from the tanzu cli

tanzu service types list 

should produce output 

 Warning: This is an ALPHA command and may change without notice.

  NAME      DESCRIPTION               APIVERSION            KIND             
  rabbitmq  It's a RabbitMQ cluster!  rabbitmq.com/v1beta1  RabbitmqCluster  