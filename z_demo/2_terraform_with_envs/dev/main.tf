# Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication

  tags = {
    Environment = var.environment
  }
}
