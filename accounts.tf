# Accounts for eCricket services
resource "aws_organizations_account" "production_game_services" {
  name      = "production-ecricket-game-services"
  email     = "prod-game-services@${var.account_email_domain}"
  parent_id = aws_organizations_organizational_unit.titan_production.id
}

resource "aws_organizations_account" "production_dedicated_services" {
  name      = "production-ecricket-dedicated-services"
  email     = "prod-dedicated-services@${var.account_email_domain}"
  parent_id = aws_organizations_organizational_unit.titan_production.id
}

resource "aws_organizations_account" "staging_game_services" {
  name      = "staging-ecricket-game-services"
  email     = "staging-game-services@${var.account_email_domain}"
  parent_id = aws_organizations_organizational_unit.titan_staging.id
}

resource "aws_organizations_account" "staging_dedicated_services" {
  name      = "staging-ecricket-dedicated-services"
  email     = "staging-dedicated-services@${var.account_email_domain}"
  parent_id = aws_organizations_organizational_unit.titan_staging.id
}

resource "aws_organizations_account" "development_game_services" {
  name      = "development-ecricket-game-services"
  email     = "dev-game-services@${var.account_email_domain}"
  parent_id = aws_organizations_organizational_unit.titan_development.id
}

resource "aws_organizations_account" "development_dedicated_services" {
  name      = "development-ecricket-dedicated-services"
  email     = "dev-dedicated-services@${var.account_email_domain}"
  parent_id = aws_organizations_organizational_unit.titan_development.id
}
