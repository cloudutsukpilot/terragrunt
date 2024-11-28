output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.example.name
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint of the Storage Account"
  value       = azurerm_storage_account.example.primary_blob_endpoint
}
