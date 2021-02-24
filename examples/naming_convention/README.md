# Create a basic Resource Group

This example creates a basic Resource Group with some custom tags using Azure naming convention.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No provider.

## Modules

| Name | Source | Version |
|------|--------|---------|
| naming | github.com/Azure/terraform-azurerm-naming?ref=e75a386 |  |
| rg | ../../ |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment for Azure naming convention. | `string` | `"sand"` | no |
| location | Azure Region to create resource. | `string` | `"northeurope"` | no |
| workload | Workload for Azure naming convention. | `string` | `"demo"` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# References
* [Azure Naming Convention](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)
* [Azure Regions](https://azure.microsoft.com/en-us/global-infrastructure/geographies/)
