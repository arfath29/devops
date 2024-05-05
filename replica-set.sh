nano replica-set.yml
-----------------------------------------------------------------

---
apiVersion: apps/v1
kind: ReplicaSet
metadata:
 name: tomcat-rs
 labels:
  type: webserver
  author: sami
spec:
 replicas: 3
 selector:
  matchLabels:
   type: webserver
 template:
  metadata:
   name: tomcat-pod
   labels:
    type: webserver
  spec:
   containers:
    - name: mywebserver
      image: tomee
      ports:
       - containerPort: 8080
         hostPort: 9090


-----------------------------------------------------------------

kubectl create -f replica-set.yml
