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

variable "tags" {
  description = "Additional resource tags to apply to applicable resources. Format: {\"key\" = \"value\"}"
  type        = map(string)
  default     = {}
}
