include {
  path = find_in_parent_folders()
}


# Resource Group module
terraform {
  source = "../../../cloud/azure/modules/resource_group"
}

inputs = {
  resource_groups = {
    "prod-terragrunt-rg-01" = "centralindia"
    "prod-terragrunt-rg-02" = "centralindia"
  }
  
  tags = {
    "prod-terragrunt-rg-01" = {
      "Owner": "Cloudutsuk",
      "Application": "Terragrunt",
      "CreatedBy": "Sakharam Shinde"
    }
    "prod-terragrunt-rg-02" = {
      "Owner": "Cloudutsuk",
      "Application": "Terragrunt",
      "CreatedBy": "Sakharam Shinde"
    }
  }
}
