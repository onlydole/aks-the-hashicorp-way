# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "project" {
  name     = var.project_name
  location = var.region
}
