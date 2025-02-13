resource "aws_ssoadmin_permission_set" "admin_access" {
  instance_arn = data.aws_ssoadmin_instances.sso.instance_arn
  name         = "AdministratorAccess"
  description  = "Full admin access to AWS"

  managed_policies = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]

  session_duration = "PT8H"
}


resource "aws_ssoadmin_account_assignment" "admin_assignment" {
  instance_arn       = data.aws_ssoadmin_instances.sso.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.admin_access.arn
  principal_id       = "terraform-1"  # Replace with user or group ID
  principal_type     = "USER"  # Can be "USER" or "GROUP"
  target_id          = "010928202531"  # AWS Account ID
  target_type        = "AWS_ACCOUNT"
}

data "aws_ssoadmin_instances" "sso" {}

resource "aws_identitystore_group" "developers" {
  identity_store_id = data.aws_ssoadmin_instances.sso.instance_arn
  display_name      = "Developers"
}

