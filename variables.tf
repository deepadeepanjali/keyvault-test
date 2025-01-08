variable "keyvault" {
  description = "Name of keyvault"
  type        = string
}

variable "resourcegroup" {
  description = "The resource group of the Key Vault"
  type        = string
}

variable "role_definition_name" {
  description = "Name of role definition for secret"
  type        = string
}

variable "principal_id" {
  description = "objectid of AAD group"
  type        = string
}
