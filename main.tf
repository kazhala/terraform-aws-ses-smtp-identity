data "aws_region" "current" {}

resource "random_id" "this" {
  byte_length = 8

  keepers = {
    "name" = var.iam_username
    "path" = var.iam_path
  }
}

resource "aws_iam_user" "this" {
  name = "${var.iam_username}.${random_id.this.hex}"
  path = var.iam_path

  tags = var.tags
}

resource "aws_iam_user_policy" "this" {
  name = "AmazonSesSendingAccess"
  user = aws_iam_user.this.name

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
  user = aws_iam_user.this.name
}
