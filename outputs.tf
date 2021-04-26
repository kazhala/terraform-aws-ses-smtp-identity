output "smtp_endpoint" {
  value       = "email-smtp.${data.aws_region.current.name}.amazonaws.com"
  description = "AWS SES SMTP host endpoint."
}

output "smtp_ports" {
  value       = [25, 587, 2587]
  description = "AWS SES SMTP TLS ports."
}

output "smtp_username" {
  value       = aws_iam_access_key.this.id
  description = "AWS SES SMTP username."
}

output "smtp_password" {
  value       = aws_iam_access_key.this.ses_smtp_password_v4
  description = "AWS SES SMTP password."
  sensitive   = true
}
