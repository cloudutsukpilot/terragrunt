include {
  path = find_in_parent_folders()
}

# Define storage account after resource group is created
dependency "resource_group" {
  config_path = "../resource_group"
}

terraform {
  source = "../../../modules/storage_account"
}

inputs = {
  storage_account_name  = "cldprodstorageacct"
  resource_group_name   = dependency.resource_group.outputs.resource_group_name
  location              = "centralindia"
}