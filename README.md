#LGF-AWS-HIGH-LEVEL-INFRA
## Should Broadly Include the following
## Organizational Strcuture
## Overall [NEW] IAM policies for users and services at the root level.
## Overall [NEW] Network infra for root level
## OVerall [NEW] Security groups for root level
## Any resources that belong in the root and shared by all, rather than the account level and isolated resources.
## For now, the scope is just organizations and Overall IAM policies for users and services at the root level. 
## Will visit this back once we want to move all our services in the root account to the respective accounts.

## we expect individual terraform infra provisioning modules for backend/other services to be in the respective services that you develop with appropriate permissions.

# Terraform AWS Organization Setup

This repository contains Terraform configurations for setting up AWS Organizations.

## Backend Configuration

The backend configuration is stored in `backend.hcl`. To initialize Terraform with this backend configuration, use:

```bash
terraform init -backend-config=backend.hcl
```

## Variables

The following variables are available for configuration:

- `terraform_state_bucket`: The name of the S3 bucket to store the Terraform state
- `terraform_state_key`: The path to the state file in the S3 bucket
- `terraform_state_region`: The AWS region where the S3 bucket is located
- `terraform_lock_table`: The name of the DynamoDB table for state locking

## Usage

1. Initialize Terraform:
   ```bash
   terraform init -backend-config=backend.hcl
   ```

2. Plan the changes:
   ```bash
   terraform plan
   ```

3. Apply the changes:
   ```bash
   terraform apply
   ```
