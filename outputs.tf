output "name" {
  description = "The Resource Group name."
  value       = azurerm_resource_group.rg.name
}

output "id" {
  description = "The Resource Group id."
  value       = azurerm_resource_group.rg.id
}

output "location" {
  description = "The Resource Group location."
  value       = azurerm_resource_group.rg.location
}

output "tags" {
  description = "The Resource Group tags."
  value       = azurerm_resource_group.rg.tags
}
