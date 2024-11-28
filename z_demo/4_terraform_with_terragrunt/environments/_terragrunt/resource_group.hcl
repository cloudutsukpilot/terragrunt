include {
  path = find_in_parent_folders()
}


# Resource Group module
terraform {
  source = "../../modules/resource_group"
}

inputs = {
  resource_groups = { for resource_group in local.config.resource_groups : resource_group.name => {
    name     = resource_group.name
    location = resource_group.location
    tags     = merge(local.common_tags, resource_group.resource_tags)
    }
  }
}