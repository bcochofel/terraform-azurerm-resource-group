provider "azurerm" {
  features {}
}

module "rg" {
  source = "../../"

  name     = "rglocklevel"
  location = "North Europe"

  lock_level = "ReadOnly"

  tags = {
    ManagedBy   = "Terraform"
    Environment = "sandbox"
  }
}
