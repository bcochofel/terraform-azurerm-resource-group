output "name" {
  description = "The Resource Group name."
  value       = azurerm_resource_group.rg.name
}

output "id" {
  description = "The Resource Group id."
  value       = azurerm_resource_group.rg.id
}
