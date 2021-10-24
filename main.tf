data "aws_region" "current" {}

resource "random_id" "this" {
  byte_length = 8

  keepers = {
    token = var.iam_token
  }
}

resource "aws_iam_user" "this" {
  count = var.deploy_iam_user ? 1 : 0

  name = "${var.iam_username}-${random_id.this.hex}"
  path = var.iam_path

  tags = var.tags
}

# tfsec:ignore:aws-iam-no-policy-wildcards
resource "aws_iam_user_policy" "this" {
  count = var.deploy_iam_user ? 1 : 0

  # checkov:skip=CKV_AWS_40:Required for SES user.
  name = "AmazonSesSendingAccess"
  user = aws_iam_user.this[0].name

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : "ses:SendRawEmail",
        "Resource" : "*"
      }
    ]
  })
}

resource "aws_iam_access_key" "this" {
  count = var.deploy_iam_user && var.deploy_access_key ? 1 : 0

  user = aws_iam_user.this[0].name
}
