# jenkins-kubernetes-example
docker build . --tag jenkins-image-vijay
docker tag jenkins-image-vijay localhost:5000/jenkins-image-vijay:0.1.0
docker images
kubectl create -f jenkins-deployment.yaml 
kubectl get all
kubectl create -f jenkins-service.yaml
