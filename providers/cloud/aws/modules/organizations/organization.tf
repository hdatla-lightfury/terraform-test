resource "aws_organizations_organization" "org_cloud_lightfurygames" {
  feature_set = var.feature_set //ALWAYS KEEP THIS AS "ALL" FOR LIGHTFURYGAMES
  // To avoid accidnetal destroying of existing principals and policyt types, we only incrementally add new ones below, 
  // until we move all our services in root to the respective organization accounts
 }

## Demo code only, to be replaced with appriporiate syntax when adding new ones
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
