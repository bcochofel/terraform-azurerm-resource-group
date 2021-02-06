# Terraform module to create Azure Resource Group

This module creates Azure Resource Group.

# Usage

```hcl:examples/basic/main.tf
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name      | Version    |
| --------- | ---------- |
| terraform | >= 0.12.20 |
| azurerm   | >= 2.41.0  |

## Providers

| Name    | Version   |
| ------- | --------- |
| azurerm | >= 2.41.0 |

## Inputs

| Name     | Description                                                                                                         | Type          | Default | Required |
| -------- | ------------------------------------------------------------------------------------------------------------------- | ------------- | ------- | :------: |
| location | The Azure Region where the Resource Group should exist.<br>Changing this forces a new Resource Group to be created. | `string`      | n/a     |   yes    |
| name     | The Name which should be used for this Resource Group.<br>Changing this forces a new Resource Group to be created.  | `string`      | n/a     |   yes    |
| tags     | A mapping of tags which should be assigned to the Resource Group.                                                   | `map(string)` | `{}`    |    no    |

## Outputs

| Name | Description              |
| ---- | ------------------------ |
| id   | The Resource Group id.   |
| name | The Resource Group name. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# Run tests

```bash
cd test/
go test -v
```

# References

* [Azure Resource Group](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal)
* [Terraform azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)
