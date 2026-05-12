variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-nareshyedlapalli-snbx-eastus2-01"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US2"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "stgteraformplantest4"  # Must be unique; override via tfvars
}