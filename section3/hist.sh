k get pods --selector=app=redis

k taint nodes node-name key=value:NoSchedule|NoExecute|PreferNoSchedule
k taint nodes node01 app-blue:NoSchedule
k taint node node01 spray=mortein:NoSchedule

