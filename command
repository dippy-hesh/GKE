image stacksimplify/kubenginx:1.0.0

  create a pod
# Template
kubectl run <desired-pod-name> --image <Container-Image> 
# Replace Pod Name, Container Image
kubectl run my-first-pod --image stacksimplify/kubenginx:1.0.0
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Expose Pod as a Service
kubectl expose pod <Pod-Name>  --type=LoadBalancer --port=80 --name=<Service-Name>
kubectl expose pod my-first-pod  --type=LoadBalancer --port=80 --name=my-first-service
when you create a service for clusterip no need to specify in the command

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
logs for pods

# Dump Pod logs
kubectl logs <pod-name>
kubectl logs my-first-pod

# Stream pod logs with -f option and access application to see logs
kubectl logs <pod-name>
kubectl logs -f my-first-pod
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
how to connect to container
  
# Connect to Nginx Container in a POD
kubectl exec -it <pod-name> -- /bin/bash
kubectl exec -it my-first-pod -- /bin/bash
to come out do exit
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
  clean up
  # Get all Objects in default namespace
kubectl get all

# Delete Services
kubectl delete svc my-first-service

# Delete Pod
kubectl delete pod my-first-pod

# Get all Objects in default namespace
kubectl get all
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
gcloud compute firewall-rules create fw-rule-gke-node-port \
    --allow tcp:NODE_PORT

# Replace NODE_PORT
gcloud compute firewall-rules create fw-rule-gke-node-port \
    --allow tcp:30080   

# List Firewall Rules
gcloud compute firewall-rules list    
-----------------------------------------------------------------------------------------------------------------------
# GKE Cluster Kubernetes Service Full DNS Name format
<svc>.<ns>.svc.cluster.local
--------------------------------------------------------------------------------------------------------------------

  

  
