# terraform-test

This repository contains Terraform configuration for managing the AWS
organization **cloud-lightfurygames**. The code provisions Organizational
Units (OUs) and accounts following AWS best practices.

The structure created by this configuration is:

- `production`
  - `titan_production`
    - `production-ecricket-game-services`
    - `production-ecricket-dedicated-services`
- `staging`
  - `titan_staging`
    - `staging-ecricket-game-services`
    - `staging-ecricket-dedicated-services`
- `sandbox`
- `development`
  - `titan_development`
    - `development-ecricket-game-services`
    - `development-ecricket-dedicated-services`
- `shared_services`
- `security`
  - `security-logs`
  - `security-tools`
- `analytics` *(future)*
- `developer-tools` *(future)*

Each account uses an email in the form `<name>@<account_email_domain>` where
`account_email_domain` is configurable via Terraform variables.
