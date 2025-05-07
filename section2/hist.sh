kubectl create -f rc-defintion.yaml
kubectl get replicacontroller
kubectl get pods
kubectl get pods -o wide

kuebectl create -f replicaset-definition.yaml
kubectl get replicaset
kubectl get pods

# update replicaset to 6
kubectl replace -f replicaset-definition.yaml
kubectl scale --replicas=6 -f replicaset-definition.yaml
kubectl scale --replicas=6 replicaset myapp-rs


k get all
k run nginx --image=nginx
k run nginx --image=nginx --dry-run=client -o yaml # output yaml

k get services # get svc == get services

k create namespace mynamespace
k config set-context --current --namespace=mynamespace

k apply -f redis.yaml
