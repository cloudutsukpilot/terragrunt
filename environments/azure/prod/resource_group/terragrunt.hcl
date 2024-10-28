include {
  path = find_in_parent_folders()
}

locals {
  common_vars = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
  common_tags = local.common_vars.common_tags
  config = yamldecode(file("${get_terragrunt_dir()}/../config.yaml"))
}

# Resource Group module
terraform {
  source = "../../../../cloud/azure/modules/resource_group"
}

inputs = {
  resource_groups = { for resource_group in local.config.resource_groups : resource_group.name => {
      name     = resource_group.name
      location = resource_group.location
      tags     = merge(local.common_tags, resource_group.resource_tags)
    }
  }
}