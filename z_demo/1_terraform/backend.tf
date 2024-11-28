terraform {
  backend "azurerm" {
    container_name       = "terragruntdemo"
    key                  = "./terraform.tfstate"
    resource_group_name  = "terraform-backend"
    storage_account_name = "cloudutsuktfstatestgacc"
  }
}
