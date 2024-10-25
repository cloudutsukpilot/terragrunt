include {
  path = find_in_parent_folders()
}

# Create resource group first
dependency "resource_group" {
  config_path = "../resource_group"
  mock_outputs        = {
    resource_group_output = {
      "dev-terragrunt-rg-01" = {
        name     = "dummy-rg"
        location = "dummy-location"
      }
    }
  }
  mock_outputs_allowed_terraform_commands = ["validate"]
}


# Storage Account module
terraform {
  source = "../../../../cloud/azure/modules/storage_account"
}

inputs = {
  storage_account_name  = "clddevstorageacct"
  resource_group_name   = dependency.resource_group.outputs.resource_group_output["dev-terragrunt-rg-02"].name
  location              = "centralindia"
}
