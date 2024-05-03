apiVersion: v1
kind: ReplicationController
metadata:
 name: httpd-rc
 labels:
  author: sami
spec:
 replicas: 3
 template:
  metadata:
   name: httpd-pod
   labels:
    author: sunil
  spec:
   containers:
    - name: myhttpd
      image: httpd
      ports:
       - containerPort: 80
         hostPort: 8080


kubectl delete -f  replication-controller.yml