# Terraform VPC and Firewall Lab

This lab uses Terraform to create a custom VPC and firewall rules allowing ICMP, HTTP on port 80, TCP port 8080, and TCP ports 1000–2000. Review the rule source ranges in `main.tf` before applying; broad Internet ranges are suitable only for a disposable lab.

## Files

```text
README.md
deploy.sh
Python Script (Automation + Validation).py
lab_screenshot/
```

## Deploy

```bash
export GOOGLE_CLOUD_PROJECT=your-project-id
gcloud config set project "$GOOGLE_CLOUD_PROJECT"
terraform init
terraform plan
terraform apply
```

Use a plan review rather than blindly accepting changes. Terraform state may contain resource details; it is ignored locally and must not be committed.

![Clone](lab_screenshot/01-clone-repo-cloudshell.png.png)
![Configuration](lab_screenshot/02-terraform-config-main-tf.png.png)
![Init](lab_screenshot/03-terraform-init.png.png)
![Apply](lab_screenshot/04-terraform-apply-running.png.png)
![Success](lab_screenshot/05-terraform-apply-success.png.png)

## Cleanup

```bash
terraform destroy
```

**Author:** Kartikeya Uniyal
