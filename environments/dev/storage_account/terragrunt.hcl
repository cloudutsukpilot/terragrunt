include {
  path = find_in_parent_folders()
}

# Create resource group first
dependency "resource_group" {
  config_path = "../resource_group"
}


# Storage Account module
terraform {
  source = "../../../modules/storage_account"
}

inputs = {
  storage_account_name  = "clddevstorageacct"
  resource_group_name   = dependency.resource_group.outputs.resource_group_name
  location              = "centralindia"
}
