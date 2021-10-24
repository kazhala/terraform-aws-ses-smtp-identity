output "smtp" {
  description = "SMTP infomation."

  value = {
    endpoint = "email-smtp.${data.aws_region.current.name}.amazonaws.com"
    ports    = [25, 587, 2587]
    username = var.deploy_access_key && var.deploy_iam_user ? aws_iam_access_key.this[0].id : null
    password = var.deploy_access_key && var.deploy_iam_user ? aws_iam_access_key.this[0].ses_smtp_password_v4 : null
  }
}

output "aws_iam_user" {
  description = "Outputs of the IAM user created."

  value = {
    this = var.deploy_iam_user ? aws_iam_user.this[0] : null
  }
}

output "aws_iam_access_key" {
  description = "Outputs of the IAM access key."

  value = {
    this = var.deploy_iam_user && var.deploy_access_key ? aws_iam_access_key.this[0] : null
  }
}
