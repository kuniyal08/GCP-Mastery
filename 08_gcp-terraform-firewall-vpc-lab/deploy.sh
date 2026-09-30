#!/usr/bin/env bash
set -euo pipefail

AUTO_APPROVE=false
if [[ "${1:-}" == "--auto-approve" ]]; then
  AUTO_APPROVE=true
fi

read -r -p "Enter your GCP Project ID: " PROJECT_ID
export GOOGLE_CLOUD_PROJECT="$PROJECT_ID"

echo "Using GCP project: $GOOGLE_CLOUD_PROJECT"
gcloud config set project "$GOOGLE_CLOUD_PROJECT"

terraform init
terraform fmt -check
terraform validate
terraform plan

if [[ "$AUTO_APPROVE" == "true" ]]; then
  terraform apply -auto-approve
else
  terraform apply
fi
