#### Lệnh K8S

Check tất cả pod thuộc mọi name space

kubectl get pods --all-namespaces


Xóa 
kubectl delete pod <pod-name> --namespace <namespace>

kubectl -n kubernetes-dashboard create token admin-user
