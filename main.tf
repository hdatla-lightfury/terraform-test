module "organizations" {
  source = "./providers/cloud/aws/modules/organizations"

  # Pass required variables here, for example:
  feature_set = "ALL"
  # Add any other variables your module expects
}