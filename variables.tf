variable "iam_username" {
  description = "The Name for the SES IAM user."
  type        = string
  default     = "ses-smtp-user"
}

variable "iam_path" {
  description = "The IAM path for the SES IAM user."
  type        = string
  default     = "/"
}

# tfsec:ignore:general-secrets-sensitive-in-variable
variable "iam_token" {
  description = "Token used to generate unique name."
  type        = string
  default     = "iam"
}

variable "deploy_iam_user" {
  description = "Deploy IAM user."
  type        = bool
  default     = true
}

variable "deploy_access_key" {
  description = "Deploy IAM access key."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional resource tags to apply to applicable resources. Format: {\"key\" = \"value\"}"
  type        = map(string)
  default     = {}
}
