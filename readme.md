# Terraform AWS account module

This is module creating AWS account. 

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | n/a | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account"></a> [account](#output\_account) | n/a |
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | n/a |
## License

This project is distributed under [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0.html).