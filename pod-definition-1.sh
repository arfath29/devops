mkdir demofiles
cd demofiles

---------------------------------------------

apiVersion: v1
kind: Pod
metadata:
 name: nginx-pod
 labels:
  author: sami
  type: reverse-proxy
spec:
 containers: 
  - name: appserver
    image: nginx

---------------------------------------------

kubectl create -f pod-definition1.yml