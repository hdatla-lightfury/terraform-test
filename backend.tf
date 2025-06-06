terraform {
  backend "s3" {
    bucket         = "terraform-state-org-cloud-lightfurygames"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table-org-cloud-lightfurygames"
  }
}