provider "azurerm" {
  features {}
}

module "naming" {
  source = "github.com/Azure/terraform-azurerm-naming?ref=e75a386"

  suffix = [
    var.workload,
    var.environment,
    var.location
  ]
}

module "rg" {
  source = "../../"

  name     = module.naming.resource_group.name_unique
  location = var.location

  tags = {
    ManagedBy   = "Terraform"
    Environment = var.environment
  }
}
