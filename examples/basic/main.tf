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
