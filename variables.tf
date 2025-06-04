variable "aws_region" {
  description = "AWS region for Terraform operations"
  type        = string
  default     = "us-east-1"
}

variable "account_email_domain" {
  description = "Domain used for AWS account email addresses"
  type        = string
  default     = "example.com"
}
