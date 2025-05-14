k create -f deployment.yaml
k get deployment
k apply -f deployment.yaml
k set image deployment myapp=nginx:1.9.1
k rollout status deployment myapp
k rollout history deployment myapp


k rollout undo deployment myapp

FROM Ubuntu
CMD sleep 5


FROM Ubuntu
ENTRYPOINT ["sleep"]
CMD ["5"]
docker run ubuntu-sleeper 10 # sleep 10, arg overide CMD

docker run ubuntu-sleeper \
    --entrypoint /sleep2.0 \
    ubuntu-sleeper 10


k create configmap \
    app-config --from-literal=APP_COLOR=blue  \
        --from-literal=APP_NAME=bb
        OR
        --from-file=app-config.config

k create -f configmap.yaml

k autoscale deployment myapp --min=2 --max=10 --cpu-percent=80
k get hpa
k delete hpa myapp

 k autoscale deployment nginx-deployment --max=3 --cpu-percent=80

 k edit deployment nginx-deployment


 kubectl get pods -n kube-system | grep vpa-updater

kubectl get deployment flask-app -o wide

 k apply -f vpa-cpu-testing.yml 

 kubectl top pod

 