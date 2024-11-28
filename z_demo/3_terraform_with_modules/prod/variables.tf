variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the Storage Account"
  type        = string
}

variable "storage_account_tier" {
  description = "Performance tier of the Storage Account"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication" {
  description = "Replication type of the Storage Account"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default     = {
    Environment = "Dev"
    Owner       = "User"
  }
}
