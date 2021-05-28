output "smtp_endpoint" {
  description = "The AWS SES SMTP host endpoint."
  value       = "email-smtp.${data.aws_region.current.name}.amazonaws.com"
}

output "smtp_ports" {
  description = "The AWS SES SMTP TLS ports."
  value       = [25, 587, 2587]
}

output "smtp_username" {
  description = "The AWS SES SMTP username."
  value       = aws_iam_access_key.this.id
}

output "smtp_password" {
  description = "The AWS SES SMTP password."
  value       = aws_iam_access_key.this.ses_smtp_password_v4
  sensitive   = true
}
