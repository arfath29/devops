nano service1.yml

---
apiVersion: v1
kind: Service
metadata:
 name: nginx-service
 labels:
  author: sami
spec:
 type: NodePort
 ports:
  - targetPort: 80
    port: 80
    nodePort: 30008
 selector:
  author: sami
  type: reverse-proxy


kubectl create -f service1.yml

