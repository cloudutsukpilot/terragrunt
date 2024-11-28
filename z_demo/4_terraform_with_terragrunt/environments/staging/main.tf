module "resource_group" {
  source  = "../modules/resource_group"
  name    = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source                = "../modules/storage_account"
  name                  = var.storage_account_name
  resource_group_name   = module.resource_group.resource_group_name
  location              = var.location
  account_tier          = var.storage_account_tier
  account_replication_type = var.storage_account_replication
  tags                  = var.tags
}
