output "storage_account_primary_endpoint" {
  description = "The primary endpoint of the Storage Account"
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
}
