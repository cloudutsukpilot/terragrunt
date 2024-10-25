include {
  path = find_in_parent_folders()
}


# Resource Group module
terraform {
  source = "../../../../cloud/azure/modules/resource_group"
}

inputs = {
    resource_groups = {
      dev-terragrunt-rg-01 = {
        name     = "dev-terragrunt-rg-01"
        location = "centralindia"
        tags = {
          Owner        = "Cloudutsuk"
          Application  = "Terragrunt"
          CreatedBy    = "Sakharam Shinde"
        }
      },
      dev-terragrunt-rg-02 = {
        name     = "dev-terragrunt-rg-02"
        location = "centralindia"
        tags = {
          Owner        = "Cloudutsuk"
          Application  = "Terragrunt"
          CreatedBy    = "Sakharam Shinde"
        }
      }
   } 
}