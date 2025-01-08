#provider "azurerm" {
#  features {}
#}

data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault 
  resource_group_name = var.resourcegroup 
}

resource "azurerm_role_assignment" "keyvaultrole" {
  principal_id       = var.principal_id  # Get Object ID of the AD group
  role_definition_name = var.role_definition_name  # Assign the Secret Reader role
  scope              = data.azurerm_key_vault.keyvault.id  # Assign to the entire Key Vault
}
