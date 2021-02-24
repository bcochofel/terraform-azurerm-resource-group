# Terraform module to create Azure Resource Group

This module creates Azure Resource Group.
It also has the option to create a lock on the Resource Group scope.
This module also validates the name according to the Azure Resource naming
restrictions.

**NOTE: To use the lock level option the service principal must have the "Owner"
or "User Access Administrator" roles.**

## Usage

```hcl:examples/basic/main.tf
provider "azurerm" {
  features {}
}

module "rg" {
  source = "../../"

  name     = "rgdemo"
  location = "North Europe"

  tags = {
    ManagedBy   = "Terraform"
    Environment = "sandbox"
  }
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| azurerm | >= 2.41.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.41.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [azurerm_management_lock](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) |
| [azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | The Azure Region where the Resource Group should exist.<br>Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| lock\_level | Specifies the Level to be used for this RG Lock.<br>Possible values are Empty (no lock), CanNotDelete and ReadOnly. | `string` | `""` | no |
| name | The Name which should be used for this Resource Group.<br>Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| tags | A mapping of tags which should be assigned to the Resource Group. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The Resource Group id. |
| location | The Resource Group location. |
| name | The Resource Group name. |
| tags | The Resource Group tags. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Run tests

```bash
cd test/
go test -v
```

## pre-commit hooks

This repository uses [pre-commit](https://pre-commit.com/).

To install execute:

```bash
pre-commit install --install-hooks -t commit-msg
```

To run the hooks you need to install:

* [terraform](https://github.com/hashicorp/terraform)
* [terraform-docs](https://github.com/terraform-docs/terraform-docs)
* [TFLint](https://github.com/terraform-linters/tflint)
* [TFSec](https://github.com/tfsec/tfsec)
* [checkov](https://github.com/bridgecrewio/checkov)

## References

* [Azure Resource naming restrictions](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules)
* [Azure Resource Group](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal)
* [Terraform azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)
* [Lock Resources](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources)
