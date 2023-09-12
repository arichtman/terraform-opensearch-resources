# Terraform Opensearch Resources

Terraform module for as-yet-unsupported resources in the official provider.

Presently unstable.
Developed against OpenSearch 1.3.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_restapi"></a> [restapi](#requirement\_restapi) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_restapi"></a> [restapi](#provider\_restapi) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [restapi_object.alerting_destination](https://registry.terraform.io/providers/Mastercard/restapi/latest/docs/resources/object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_slack_alerting_destinations"></a> [slack\_alerting\_destinations](#input\_slack\_alerting\_destinations) | List of Slack destinations.<br>E.g. [ {<br>  name: "monitoring-prod"<br>  url: "T03LAS4GQ/B03UA1J6H7T/tNBYUxtnElTLYB5ewrKmQAYH"<br>}] | <pre>list(object({<br>    name = string<br>    url  = string<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
