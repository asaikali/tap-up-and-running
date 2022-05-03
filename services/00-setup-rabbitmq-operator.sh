kapp deploy --app rmq-operator -f https://github.com/rabbitmq/cluster-operator/releases/download/v1.12.1/cluster-operator.yml


# results 


Changes

Namespace        Name                                          Kind                      Conds.  Age  Op      Op st.  Wait to    Rs  Ri  
(cluster)        rabbitmq-cluster-operator-role                ClusterRole               -       -    create  -       reconcile  -   -  
^                rabbitmq-cluster-operator-rolebinding         ClusterRoleBinding        -       -    create  -       reconcile  -   -  
^                rabbitmq-system                               Namespace                 -       -    create  -       reconcile  -   -  
^                rabbitmqclusters.rabbitmq.com                 CustomResourceDefinition  -       -    create  -       reconcile  -   -  
rabbitmq-system  rabbitmq-cluster-leader-election-role         Role                      -       -    create  -       reconcile  -   -  
^                rabbitmq-cluster-leader-election-rolebinding  RoleBinding               -       -    create  -       reconcile  -   -  
^                rabbitmq-cluster-operator                     Deployment                -       -    create  -       reconcile  -   -  
^                rabbitmq-cluster-operator                     ServiceAccount            -       -    create  -       reconcile  -   -  

Op:      8 create, 0 delete, 0 update, 0 noop, 0 exists
Wait to: 8 reconcile, 0 delete, 0 noop

Continue? [yN]: y

12:15:41PM: ---- applying 3 changes [0/8 done] ----
12:15:42PM: create namespace/rabbitmq-system (v1) cluster
12:15:42PM: create clusterrole/rabbitmq-cluster-operator-role (rbac.authorization.k8s.io/v1) cluster
12:15:44PM: create customresourcedefinition/rabbitmqclusters.rabbitmq.com (apiextensions.k8s.io/v1) cluster
12:15:44PM: ---- waiting on 3 changes [0/8 done] ----
12:15:44PM: ok: reconcile namespace/rabbitmq-system (v1) cluster
12:15:44PM: ok: reconcile clusterrole/rabbitmq-cluster-operator-role (rbac.authorization.k8s.io/v1) cluster
12:15:44PM: ok: reconcile customresourcedefinition/rabbitmqclusters.rabbitmq.com (apiextensions.k8s.io/v1) cluster
12:15:44PM: ---- applying 2 changes [3/8 done] ----
12:15:44PM: create role/rabbitmq-cluster-leader-election-role (rbac.authorization.k8s.io/v1) namespace: rabbitmq-system
12:15:45PM: create serviceaccount/rabbitmq-cluster-operator (v1) namespace: rabbitmq-system
12:15:45PM: ---- waiting on 2 changes [3/8 done] ----
12:15:45PM: ok: reconcile serviceaccount/rabbitmq-cluster-operator (v1) namespace: rabbitmq-system
12:15:45PM: ok: reconcile role/rabbitmq-cluster-leader-election-role (rbac.authorization.k8s.io/v1) namespace: rabbitmq-system
12:15:45PM: ---- applying 2 changes [5/8 done] ----
12:15:45PM: create clusterrolebinding/rabbitmq-cluster-operator-rolebinding (rbac.authorization.k8s.io/v1) cluster
12:15:45PM: create rolebinding/rabbitmq-cluster-leader-election-rolebinding (rbac.authorization.k8s.io/v1) namespace: rabbitmq-system
12:15:45PM: ---- waiting on 2 changes [5/8 done] ----
12:15:45PM: ok: reconcile rolebinding/rabbitmq-cluster-leader-election-rolebinding (rbac.authorization.k8s.io/v1) namespace: rabbitmq-system
12:15:45PM: ok: reconcile clusterrolebinding/rabbitmq-cluster-operator-rolebinding (rbac.authorization.k8s.io/v1) cluster
12:15:45PM: ---- applying 1 changes [7/8 done] ----
Warning: clusterimagepolicies.signing.apps.tanzu.vmware.com "image-policy" not found. Image policy enforcement was not applied.
12:15:46PM: create deployment/rabbitmq-cluster-operator (apps/v1) namespace: rabbitmq-system
12:15:46PM: ---- waiting on 1 changes [7/8 done] ----
12:15:46PM: ongoing: reconcile deployment/rabbitmq-cluster-operator (apps/v1) namespace: rabbitmq-system
12:15:46PM:  ^ Waiting for 1 unavailable replicas
12:15:46PM:  L ok: waiting on replicaset/rabbitmq-cluster-operator-5fb7fb5749 (apps/v1) namespace: rabbitmq-system
12:15:46PM:  L ongoing: waiting on pod/rabbitmq-cluster-operator-5fb7fb5749-p5tvs (v1) namespace: rabbitmq-system
12:15:46PM:     ^ Pending: ContainerCreating
12:15:50PM: ok: reconcile deployment/rabbitmq-cluster-operator (apps/v1) namespace: rabbitmq-system
12:15:50PM: ---- applying complete [8/8 done] ----
12:15:50PM: ---- waiting complete [8/8 done] ----

Succeeded

-----

k get all -n rabbitmq-system
NAME                                             READY   STATUS    RESTARTS   AGE
pod/rabbitmq-cluster-operator-5fb7fb5749-p5tvs   1/1     Running   0          100s

NAME                                        READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/rabbitmq-cluster-operator   1/1     1            1           101s

NAME                                                   DESIRED   CURRENT   READY   AGE
replicaset.apps/rabbitmq-cluster-operator-5fb7fb5749   1         1         1       101s
