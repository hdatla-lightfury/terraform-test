resource "aws_organizations_organization" "org_cloud_lightfurygames" {
  feature_set = var.feature_set
}

## Demo code only, to be replaced with appropriate syntax when adding new ones
# Safely add new service access principals separately
# resource "aws_organizations_service_access_principal" "additional" {
#   for_each = toset(var.additional_service_access_principals)

#   service_principal = each.key
# }

# # Safely enable new policy types separately
# resource "aws_organizations_policy_type" "additional" {
#   for_each = toset(var.additional_enabled_policy_types)

#   root_id = local.root_id
#   policy_type = each.key
# }
