# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "vault" {
  name                       = "vault-on-aks"
  location                   = azurerm_resource_group.project.location
  resource_group_name        = azurerm_resource_group.project.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 7
  purge_protection_enabled   = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "create",
      "delete",
      "purge",
      "get",
      "list"
    ]
  }
}
