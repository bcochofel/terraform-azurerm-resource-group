# Create a basic Resource Group

This example creates a basic Resource Group with some custom tags using Azure naming convention.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.106.1, < 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_naming"></a> [naming](#module\_naming) | Azure/naming/azurerm | 0.4.1 |
| <a name="module_rg"></a> [rg](#module\_rg) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for Azure naming convention. | `string` | `"sand"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure Region to create resource. | `string` | `"northeurope"` | no |
| <a name="input_workload"></a> [workload](#input\_workload) | Workload for Azure naming convention. | `string` | `"demo"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# References
* [Azure Naming Convention](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)
* [Azure Regions](https://azure.microsoft.com/en-us/global-infrastructure/geographies/)
