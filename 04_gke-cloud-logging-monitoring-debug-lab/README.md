# Debug Applications on GKE

This lab deploys a microservices workload to GKE and uses Cloud Logging, Cloud Monitoring, log-based metrics, and alerting to investigate application behavior.

## Commands

```bash
gcloud config set project PROJECT_ID
kubectl apply -f kubernetes-manifests.yaml
kubectl get nodes
kubectl get deployments,services,pods
```

Create an `Error_Rate` alert from the relevant log-based metric, then validate it with controlled test traffic. The original evidence covers the dashboard, cluster, nodes, workloads, service, alert, and metrics.

![Dashboard](Lab_Screenshot/01-dashboard.png.png)
![Cluster](Lab_Screenshot/03-cluster-creation.png.png)
![Nodes](Lab_Screenshot/04-kubectl-nodes.png.png)
![Deployment](Lab_Screenshot/05-deployment-services.png.png)
![Workloads](Lab_Screenshot/06-workloads-overview.png.png)
![Frontend](Lab_Screenshot/07-frontend-service.png.png)
![Alert](Lab_Screenshot/08-alert-policy.png.png)
![Metrics](Lab_Screenshot/09-monitoring-metrics.png.png)

## Cleanup

```bash
kubectl delete -f kubernetes-manifests.yaml
gcloud container clusters delete central --zone=us-central1-a
```

**Author:** Kartikeya Uniyal
