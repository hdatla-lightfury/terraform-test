resource "aws_organizations_account" "developer_tools" {
  name      = "developer-tools"
  email     = "dev-tools@lightfurygames.com"
  parent_id = aws_organizations_organizational_unit.shared_services.id
}