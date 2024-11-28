variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where the resource group will be created"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the Storage Account"
  type        = string
}

variable "storage_account_tier" {
  description = "The tier of the Storage Account"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication" {
  description = "The replication type of the Storage Account"
  type        = string
  default     = "LRS"
}

variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "dev"
}
