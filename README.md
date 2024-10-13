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

## Verify

- Check the EC2 instance is running by visiting the public IP address provided in the Terraform output.
- Check the S3 bucket by visiting the bucket name provided in the Terraform output.

```bash
curl http://<EC2_INSTANCE_IP>

aws s3 ls --endpoint-url=http://localhost:4566 s3://<S3_BUCKET_NAME>
```
