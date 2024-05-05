kubectl get nodes                              --------------------------->         (list of nodes)

kubectl get pods                               --------------------------->         ( list pods )

kubectl get pods -o wide                       --------------------------->         ( long list of pods )

kubectl run --image tomcat webserver           --------------------------->         ( to create pods )

kubectl delete pods webserver                  --------------------------->         ( to delete pods )   

kubectl delete -all pods                       --------------------------->         ( deletes all pods )

kubectl delete -f relication-controller.yml    --------------------------->         ( to definition files )

kubectl create -f pod-definition1.yml          --------------------------->         ( to create pods using definition files )

kubectl get service nginx-service              --------------------------->         ( list of services )
