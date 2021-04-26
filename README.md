# terraform-aws-ses-smtp-identity

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [random_id.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_iam_path"></a> [iam\_path](#input\_iam\_path) | IAM path for the new SES IAM user. | `string` | `"/"` | no |
| <a name="input_iam_username"></a> [iam\_username](#input\_iam\_username) | Name of the SES IAM user. | `string` | `"ses-smtp-user"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional resource tags to apply to applicable resources. Format: {"key" = "value"} | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_smtp_endpoint"></a> [smtp\_endpoint](#output\_smtp\_endpoint) | AWS SES SMTP host endpoint. |
| <a name="output_smtp_password"></a> [smtp\_password](#output\_smtp\_password) | AWS SES SMTP password. |
| <a name="output_smtp_ports"></a> [smtp\_ports](#output\_smtp\_ports) | AWS SES SMTP TLS ports. |
| <a name="output_smtp_username"></a> [smtp\_username](#output\_smtp\_username) | AWS SES SMTP username. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
