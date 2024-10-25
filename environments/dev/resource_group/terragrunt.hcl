include {
  path = find_in_parent_folders()
}


# Resource Group module
terraform {
  source = "../../../cloud/azure/modules/resource_group"
}

inputs = {
  resource_groups = {
    "dev-terragrunt-rg-01" = "centralindia"
  }
  
  tags = {
    "dev-terragrunt-rg-01" = {
      "Owner": "Cloudutsuk",
      "Application": "Terragrunt",
      "CreatedBy": "Sakharam Shinde"
    }
  }
}
