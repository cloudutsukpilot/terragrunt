include {
  path = find_in_parent_folders()
}

# Resource Group module
terraform {
  source = "../../../modules/resource_group"
}

inputs = {
  name     = "dev-resource-group"
  location = "centralindia"
}
