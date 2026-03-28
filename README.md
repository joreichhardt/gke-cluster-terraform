## Terraform Google GKE
### Enable container API first
    - gcloud services enable container.googleapis.com --project=PROJECT_ID

Starts a 3 node minimal GKE cluster in GCP

    - terraform init
    - terraform plan
    - terraform apply

To destroy

    - terraform destroy


