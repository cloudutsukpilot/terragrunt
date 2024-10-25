include {
  path = find_in_parent_folders()
}

# Resource Group module
terraform {
  source = "../../../cloud/azure/modules/resource_group"
}

inputs = {
  resource_groups = {
    "common-terragrunt-rg-01" = "centralindia"
    "common-terragrunt-rg-02" = "centralindia"
  }
  
  tags = {
    "common-backstage-rg-01" = {
      "Owner": "Cloudutsuk",
      "Application": "Terragrunt",
      "CreatedBy": "Sakharam Shinde"
    }
    "common-test-rg-02" = {
      "Owner": "Cloudutsuk",
      "Application": "Terragrunt",
      "CreatedBy": "Sakharam Shinde"
    }
  }
}
