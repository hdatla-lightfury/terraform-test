# Top-level OUs
resource "aws_organizations_organizational_unit" "production" {
  name      = "production"
  parent_id = aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_organizational_unit" "staging" {
  name      = "staging"
  parent_id = aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_organizational_unit" "sandbox" {
  name      = "sandbox"
  parent_id = aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_organizational_unit" "development" {
  name      = "development"
  parent_id = aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_organizational_unit" "shared_services" {
  name      = "shared_services"
  parent_id = aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_organizational_unit" "security" {
  name      = "security"
  parent_id = aws_organizations_organization.this.roots[0].id
}

# Future top-level OUs
resource "aws_organizations_organizational_unit" "analytics" {
  name      = "analytics"
  parent_id = aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_organizational_unit" "developer_tools" {
  name      = "developer-tools"
  parent_id = aws_organizations_organization.this.roots[0].id
}

# Level-2 OUs
resource "aws_organizations_organizational_unit" "titan_production" {
  name      = "titan_production"
  parent_id = aws_organizations_organizational_unit.production.id
}

resource "aws_organizations_organizational_unit" "titan_staging" {
  name      = "titan_staging"
  parent_id = aws_organizations_organizational_unit.staging.id
}

resource "aws_organizations_organizational_unit" "titan_development" {
  name      = "titan_development"
  parent_id = aws_organizations_organizational_unit.development.id
}

# Future security OUs
resource "aws_organizations_organizational_unit" "security_logs" {
  name      = "security-logs"
  parent_id = aws_organizations_organizational_unit.security.id
}

resource "aws_organizations_organizational_unit" "security_tools" {
  name      = "security-tools"
  parent_id = aws_organizations_organizational_unit.security.id
}
