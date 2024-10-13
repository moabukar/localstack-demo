# LocalStack AWS + Terraform Demo

This repository showcases how to use LocalStack with Terraform to deploy an EC2 instance running Nginx and create an S3 bucket.

## Prerequisites

- LocalStack installed and running (<https://localstack.cloud/>)
- Terraform installed (<https://www.terraform.io/>)
- SSH key pair available at `~/.ssh/id_rsa.pub`

## Setup

1. Start LocalStack:

```bash
localstack start


cd terraform/
terraform init
terraform apply
```

Note:

- Localstack resources are not real, so you cannot SSH into the EC2 instance or access the S3 bucket outside of LocalStack. They are there to verify that the Terraform & AWS code works as expected.
