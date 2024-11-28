output "resource_group_name" {
  description = "The name of the Resource Group"
  value       = module.resource_group.resource_group_name
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint of the Storage Account"
  value       = module.storage_account.storage_account_primary_endpoint
}
