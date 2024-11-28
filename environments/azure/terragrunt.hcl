# Generate Provider.tf for Azure
generate "provider" {
        path = "provider.tf"
        if_exists = "overwrite_terragrunt"
        contents = <<EOF
        terraform {
        required_version = ">= 1.9.8"
        required_providers {
            azurerm = {
            source  = "hashicorp/azurerm"
            version = ">= 4.7.0"
            }
        }
    }

    provider "azurerm" {
        features {}  # Required block for the Azure provider
    }
    EOF
}

# Generate Backend.tf for Azure
generate "backend" {
  path = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "azurerm" {
    resource_group_name   = "terraform-backend"  # Update with your resource group name
    storage_account_name  = "cloudutsuktfstatestgacc"       # Update with your storage account name
    container_name        = "terragrunt"                    # Update with your container name for state files
    key                   = "${path_relative_to_include()}/terraform.tfstate"
  }
}
EOF
}


terraform {
    before_hook "tflint" {
        commands     = ["init","plan"]
        execute      = ["tflint"]
    }
}