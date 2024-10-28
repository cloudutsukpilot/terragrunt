include {
  path = find_in_parent_folders()
}

locals {
  common_vars = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
  common_tags = local.common_vars.common_tags
  config = yamldecode(file("${get_terragrunt_dir()}/../config.yaml"))
}

# Create resource group first
dependency "resource_group" {
  config_path = "../resource_group"

  mock_outputs_allowed_terraform_commands = ["init","validate","plan","apply","destroy","output"]
  skip_outputs = true
}


# Storage Account module
terraform {
  source = "../../../../cloud/azure/modules/storage_account"
}

inputs = {
  storage_accounts = { for storage_acc in local.config.storage_accounts : storage_acc.name => {
      name                     = storage_acc.name
      resource_group_name       = storage_acc.resource_group_name
      location                  = storage_acc.location
      account_tier              = storage_acc.account_tier
      account_replication_type  = storage_acc.account_replication_type
      tags     = merge(local.common_tags, storage_acc.resource_tags)
    }
  }
}
