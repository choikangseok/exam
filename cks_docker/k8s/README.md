```kubectl run nginx-cks-v1 --image=ktos5427/nginx_cks --port=80
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/nginx-cks-v1 created
(base) cksui-MacBookPro:exam choikangseok$ kubectl get deployment
NAME           READY   UP-TO-DATE   AVAILABLE   AGE
nginx-cks-v1   0/1     1            0           3s
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$ kubectl get deployment
NAME           READY   UP-TO-DATE   AVAILABLE   AGE
nginx-cks-v1   0/1     1            0           5s
(base) cksui-MacBookPro:exam choikangseok$ kubectl get deployment


NAME           READY   UP-TO-DATE   AVAILABLE   AGE
nginx-cks-v1   0/1     1            0           4m50s
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$ kubectl scale deployment nginx_cks_v1 --replicas=20
Error from server (NotFound): deployments.apps "nginx_cks_v1" not found
(base) cksui-MacBookPro:exam choikangseok$ kubectl scale deployment nginx-cks-v1 --replicas=20
deployment.apps/nginx-cks-v1 scaled
(base) cksui-MacBookPro:exam choikangseok$ kubectl get deployments
NAME           READY   UP-TO-DATE   AVAILABLE   AGE
nginx-cks-v1   0/20    20           0           11m
(base) cksui-MacBookPro:exam choikangseok$ kubectl expose deployment/nginx-cks-v1 --type="NodePort" --port 80
Error from server (AlreadyExists): services "nginx-cks-v1" already exists
(base) cksui-MacBookPro:exam choikangseok$ kubectl get po
NAME                           READY   STATUS             RESTARTS   AGE
nginx-cks-v1-fbc69cdbd-277r9   0/1     ErrImagePull       0          2m25s
nginx-cks-v1-fbc69cdbd-42958   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-4j5dn   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-5qq5t   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-5xj7c   0/1     ErrImagePull       0          2m25s
nginx-cks-v1-fbc69cdbd-8khbh   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-9s7f5   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-dh6z4   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-g24rc   0/1     ErrImagePull       0          2m25s
nginx-cks-v1-fbc69cdbd-g5d8q   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-gc86l   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-gjst7   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-ht76x   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-kvcxh   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-lxppq   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-p2gzb   0/1     ErrImagePull       0          2m25s
nginx-cks-v1-fbc69cdbd-rbgxw   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-txkf2   0/1     ImagePullBackOff   0          2m25s
nginx-cks-v1-fbc69cdbd-vbthj   0/1     ImagePullBackOff   0          13m
nginx-cks-v1-fbc69cdbd-zjbdt   0/1     ImagePullBackOff   0          2m25s
(base) cksui-MacBookPro:exam choikangseok$ kubectl get po
NAME                           READY   STATUS             RESTARTS   AGE
nginx-cks-v1-fbc69cdbd-277r9   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-42958   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-4j5dn   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-5qq5t   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-5xj7c   0/1     ErrImagePull       0          2m30s
nginx-cks-v1-fbc69cdbd-8khbh   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-9s7f5   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-dh6z4   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-g24rc   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-g5d8q   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-gc86l   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-gjst7   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-ht76x   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-kvcxh   0/1     ErrImagePull       0          2m30s
nginx-cks-v1-fbc69cdbd-lxppq   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-p2gzb   0/1     ErrImagePull       0          2m30s
nginx-cks-v1-fbc69cdbd-rbgxw   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-txkf2   0/1     ImagePullBackOff   0          2m30s
nginx-cks-v1-fbc69cdbd-vbthj   0/1     ImagePullBackOff   0          14m
nginx-cks-v1-fbc69cdbd-zjbdt   0/1     ImagePullBackOff   0          2m30s
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$ kubectl delete po/nginx-cks-v1
Error from server (NotFound): pods "nginx-cks-v1" not found
(base) cksui-MacBookPro:exam choikangseok$ kubectl delete deploy/nginx-cks-v1
deployment.apps "nginx-cks-v1" deleted
(base) cksui-MacBookPro:exam choikangseok$ kubectl get services
NAME           TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
kubernetes     ClusterIP   10.96.0.1       <none>        443/TCP        6h54m
nginx-cks-v1   NodePort    10.101.178.46   <none>        80:30035/TCP   62m
nginxcksv1     NodePort    10.102.241.38   <none>        80:30603/TCP   57m
(base) cksui-MacBookPro:exam choikangseok$ kubectl delete services/nginx-cks-v1
service "nginx-cks-v1" deleted
(base) cksui-MacBookPro:exam choikangseok$ kubectl delete services/nginxcksv1
service "nginxcksv1" deleted
(base) cksui-MacBookPro:exam choikangseok$ kubectl run kangseok --image=ktos5427/nginx_cks --port=80
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/kangseok created
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$ kubectl get deploy
NAME       READY   UP-TO-DATE   AVAILABLE   AGE
kangseok   0/1     1            0           15s
(base) cksui-MacBookPro:exam choikangseok$ kubectl run kangseok --image=ktos5427/nginx_cks:v1.0 --port=80
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
Error from server (AlreadyExists): deployments.apps "kangseok" already exists
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$
(base) cksui-MacBookPro:exam choikangseok$ kubectl get deployments
NAME       READY   UP-TO-DATE   AVAILABLE   AGE
kangseok   0/1     1            0           7m28s
(base) cksui-MacBookPro:exam choikangseok$ kubectl run nginx-cks-v1 --image=ktos5427/nginx_cks --port=80
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/nginx-cks-v1 created
(base) cksui-MacBookPro:exam choikangseok$ kubectl expose deployment/nginx-cks-v1 --type="NodePort" --port 80
service/nginx-cks-v1 exposed
(base) cksui-MacBookPro:exam choikangseok$ kubectl scale deployment nginx_cks_v1 --replicas=20
Error from server (NotFound): deployments.apps "nginx_cks_v1" not found
(base) cksui-MacBookPro:exam choikangseok$ kubectl scale deployment nginx-cks-v1 --replicas=20
deployment.apps/nginx-cks-v1 scaled
(base) cksui-MacBookPro:exam choikangseok$ kubectl get deployments
NAME           READY   UP-TO-DATE   AVAILABLE   AGE
kangseok       0/1     1            0           9m2s
nginx-cks-v1   0/20    20           0           40s
(base) cksui-MacBookPro:exam choikangseok$ kubectl get pods -o wide
NAME                           READY   STATUS              RESTARTS   AGE    IP           NODE             NOMINATED NODE   READINESS GATES
kangseok-5c965b754d-z888t      0/1     ImagePullBackOff    0          9m8s   10.1.0.179   docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-29wbw   0/1     ImagePullBackOff    0          46s    10.1.0.180   docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-4j89j   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-4q2wj   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-4q47c   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-7bktj   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-8546k   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-c9ltq   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-dpft4   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-j8668   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-kr2ht   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-nfsnr   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-pt8r8   0/1     ErrImagePull        0          13s    10.1.0.182   docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-qt69r   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-qw9vc   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-s2hfq   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-tgp4x   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-v9dph   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-vs67t   0/1     ErrImagePull        0          13s    10.1.0.181   docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-x76tk   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
nginx-cks-v1-fbc69cdbd-zdwp8   0/1     ContainerCreating   0          13s    <none>       docker-desktop   <none>           <none>
(base) cksui-MacBookPro:exam choikangseok$ kubectl describe deployments/nginx-cks-v1
Name:                   nginx-cks-v1
Namespace:              default
CreationTimestamp:      Fri, 26 Jun 2020 16:57:07 +0900
Labels:                 run=nginx-cks-v1
Annotations:            deployment.kubernetes.io/revision: 1
Selector:               run=nginx-cks-v1
Replicas:               20 desired | 20 updated | 20 total | 0 available | 20 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  run=nginx-cks-v1
  Containers:
   nginx-cks-v1:
    Image:        ktos5427/nginx_cks
    Port:         80/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      False   MinimumReplicasUnavailable
  Progressing    True    ReplicaSetUpdated
OldReplicaSets:  <none>
NewReplicaSet:   nginx-cks-v1-fbc69cdbd (20/20 replicas created)
Events:
  Type    Reason             Age   From                   Message
  ----    ------             ----  ----                   -------
  Normal  ScalingReplicaSet  72s   deployment-controller  Scaled up replica set nginx-cks-v1-fbc69cdbd to 1
  Normal  ScalingReplicaSet  39s   deployment-controller  Scaled up replica set nginx-cks-v1-fbc69cdbd to 20

```
