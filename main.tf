module "organizations" {
  source = "./providers/cloud/aws/modules/organizations"

  # Pass required variables here, for example:
  feature_set = var.feature_set_org_cloud_lightfurygames
  # Add any other variables your module expects
}