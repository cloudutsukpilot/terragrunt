variable "name" {
  description = "Name of the Storage Account"
  type        = string
}

variable "resource_group_name" {
  description = "The Resource Group name to associate with"
  type        = string
}

variable "location" {
  description = "Location of the Storage Account"
  type        = string
}

variable "account_tier" {
  description = "Performance tier of the Storage Account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type of the Storage Account"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags for the Storage Account"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "value of the environment"
  type = string
}