terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.7.0"  # Specify the desired version
    }
  }
}

provider "azurerm" {
  features {}
}
