# Terraform module to create Azure Resource Group

This module creates Azure Resource Group.
It also has the option to create a lock on the Resource Group scope.
This module also validates the name according to the Azure Resource naming
restrictions.

**NOTE: To use the lock level option the service principal must have the "Owner"
or "User Access Administrator" roles.**

## Usage

```hcl
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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_lock.resource-group-level-lock](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The Azure Region where the Resource Group should exist.<br>Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_lock_level"></a> [lock\_level](#input\_lock\_level) | Specifies the Level to be used for this RG Lock.<br>Possible values are Empty (no lock), CanNotDelete and ReadOnly. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The Name which should be used for this Resource Group.<br>Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags which should be assigned to the Resource Group. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The Resource Group id. |
| <a name="output_location"></a> [location](#output\_location) | The Resource Group location. |
| <a name="output_name"></a> [name](#output\_name) | The Resource Group name. |
| <a name="output_tags"></a> [tags](#output\_tags) | The Resource Group tags. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing

This repository uses semantic versioning and conventional commits. Some automation need this to work correctly.
There are 2 GitHub Workflows:

- lint.yml: runs on Pull Request to validate Terraform
- release.yml: runs on merge to the default branch. This workflow generates a Changelog file and creates a GitHub release based on the conventional commit messages.

## Run tests

```bash
cd test/
go test -v
```

## pre-commit hooks

This repository uses [pre-commit](https://pre-commit.com/).

To install execute:

```bash
pre-commit install
pre-commit install --install-hooks -t commit-msg
```

To run the hooks you need to install:

* [terraform](https://github.com/hashicorp/terraform)
* [terraform-docs](https://github.com/terraform-docs/terraform-docs)
* [TFLint](https://github.com/terraform-linters/tflint)
* [TFSec](https://github.com/tfsec/tfsec)
* [checkov](https://github.com/bridgecrewio/checkov)
* [goimports](https://pkg.go.dev/golang.org/x/tools/cmd/goimports)
* [golint](https://pkg.go.dev/golang.org/x/lint/golint)

## References

* [Azure Resource naming restrictions](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules)
* [Azure Resource Group](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal)
* [Terraform azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)
* [Lock Resources](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources)
