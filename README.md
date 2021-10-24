# terraform-aws-ses-smtp-identity

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.37.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.0 |

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
| <a name="input_deploy_access_key"></a> [deploy\_access\_key](#input\_deploy\_access\_key) | Deploy IAM access key. | `bool` | `true` | no |
| <a name="input_deploy_iam_user"></a> [deploy\_iam\_user](#input\_deploy\_iam\_user) | Deploy IAM user. | `bool` | `true` | no |
| <a name="input_iam_path"></a> [iam\_path](#input\_iam\_path) | The IAM path for the SES IAM user. | `string` | `"/"` | no |
| <a name="input_iam_token"></a> [iam\_token](#input\_iam\_token) | Token used to generate unique name. | `string` | `"iam"` | no |
| <a name="input_iam_username"></a> [iam\_username](#input\_iam\_username) | The Name for the SES IAM user. | `string` | `"ses-smtp-user"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional resource tags to apply to applicable resources. Format: {"key" = "value"} | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_iam_access_key"></a> [aws\_iam\_access\_key](#output\_aws\_iam\_access\_key) | Outputs of the IAM access key. |
| <a name="output_aws_iam_user"></a> [aws\_iam\_user](#output\_aws\_iam\_user) | Outputs of the IAM user created. |
| <a name="output_smtp"></a> [smtp](#output\_smtp) | SMTP infomation. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
