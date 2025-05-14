k get pods --selector=app=redis

k taint nodes node-name key=value:NoSchedule|NoExecute|PreferNoSchedule
k taint nodes node01 app-blue:NoSchedule
k taint node node01 spray=mortein:NoSchedule

k get priorityclasses

kube-apiserver -h | grep enable-admission-plugins
kubectl exec kube-apiserver-controlplane -n kube-system  -- kube-apiserver -h | grep enable-admission-plugins

k describe pod -n kube-system  kube-apiserver-controlplane 
crictl ps | grep kube-apiserver

journalctl -u kubelet -f



kubectl create secret tls webhook-server-tls \
  --cert=/root/keys/webhook-server-tls.crt \
  --key=/root/keys/webhook-server-tls.key \
  -n webhook-demo

kubectl get secret webhook-server-tls -n webhook-demo

kubectl describe secret webhook-server-tls -n webhook-demo


k top node
k top pod

k logs -f nginx-6c4b5f7c8d-2q9gk
