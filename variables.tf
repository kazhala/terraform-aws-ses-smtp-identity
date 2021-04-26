variable "iam_username" {
  default     = "ses-smtp-user"
  type        = string
  description = "Name of the SES IAM user."
}

variable "iam_path" {
  default     = "/"
  type        = string
  description = "IAM path for the new SES IAM user."
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Additional resource tags to apply to applicable resources. Format: {\"key\" = \"value\"}"
}
