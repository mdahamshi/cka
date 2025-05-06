echo 'alias kubectl="minikube kubectl --"' >> ~/.bashrc
echo 'alias k="kubectl"' >> ~/.bashrc
echo 'source <(kubectl completion bash)' >> ~/.bashrc
echo 'complete -o default -F __start_kubectl k' >> ~/.bashrc