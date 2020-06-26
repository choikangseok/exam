kubectl run nginx-cks-v1 --image=ktos5427/nginx_cks --port=80
kubectl expose deployment/nginx-cks-v1 --type="NodePort" --port 80
kubectl get deployments



kubectl scale deployment nginx-cks-v1 --replicas=20
kubectl get deployments
kubectl get pods -o wide
kubectl describe deployments/nginx-cks-v1
