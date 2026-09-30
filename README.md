# Google Cloud Administration, Security, and DevOps Labs

Hands-on labs covering Google Cloud security, IAM, GKE administration, observability, networking, Terraform, and load balancing. Each lab records the objective, implementation evidence, and lessons learned from a disposable learning environment.

## Labs

| Lab | Focus |
| --- | --- |
| [01 Web Security Scanner XSS](01-gcp-web-security-scanner-xss-lab/) | Detect and remediate reflected XSS on Compute Engine |
| [02 GKE Deployment Strategies](02_GKE-Deployment-Lab/) | Rolling, canary, and blue-green deployments |
| [03 IAM Access Management](03_GCP-IAM-Access-Management/) | Project and bucket-level least privilege |
| [04 GKE Logging and Monitoring](04_gke-cloud-logging-monitoring-debug-lab/) | Debugging, metrics, logs, and alerting |
| [05 Managed Service for Prometheus](05_gke-managed-prometheus-exporters-lab/) | Exporter-based metrics collection |
| [06 Private GKE Security](06_implement-cloud-security-gcp/) | Private cluster, IAM, and jump host access |
| [07 GKE Hardening](07_hardening-default-gke-cluster-configurations/) | Workload, metadata, and RBAC hardening |
| [08 Terraform VPC and Firewall](08_gcp-terraform-firewall-vpc-lab/) | Network infrastructure as code |
| [09 App Engine with IAP](09_protect-cloud-traffic-iap-appengine/) | Identity-aware application access |
| [10 Layer 4 Load Balancing](10_gcp-l4-load-balancer-setup/) | External passthrough Network Load Balancer |
| [11 Layer 7 Load Balancing](11_gcp-l7-http-load-balancer/) | HTTP load balancing with a MIG |

## Safety and cost

These labs are for authorized test projects only. Do not scan or attack systems you do not own. Review every command before running it, avoid committing credentials, and delete billable resources after each exercise. Regions, zones, APIs, permissions, and commands may need adjustment as Google Cloud products evolve.

**Author:** Kartikeya Uniyal
