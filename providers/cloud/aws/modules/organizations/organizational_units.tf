locals {
    org_cloud_lightfurygames_root_id = aws_organizations_organization.org_cloud_lightfurygames.roots[0].id
}

## while we can use for loop to loop over the organizational units defined in vars, we are not doing it here
## to maintain mental clarity and less chance of breaking as this is too brittle and its important to be stable

## Level 1 OUs, we expect these to be fixed and not change
resource "aws_organizations_organizational_unit" "production" {
    name      = "production"
    parent_id = local.org_cloud_lightfurygames_root_id
}

resource "aws_organizations_organizational_unit" "staging" {
    name      = "staging"
    parent_id = local.org_cloud_lightfurygames_root_id
}

resource "aws_organizations_organizational_unit" "development" {
    name      = "development"
    parent_id = local.org_cloud_lightfurygames_root_id
}

resource "aws_organizations_organizational_unit" "sandbox" {
    name      = "sandbox"
    parent_id = local.org_cloud_lightfurygames_root_id
}

resource "aws_organizations_organizational_unit" "shared_services" {
    name      = "shared_services"
    parent_id = local.org_cloud_lightfurygames_root_id
}

resource "aws_organizations_organizational_unit" "security" {
    name      = "security"
    parent_id = local.org_cloud_lightfurygames_root_id
}

## We will be creating level 2 and level3 ou's as we setup our backend services once the scope is finalized, for now its empty
