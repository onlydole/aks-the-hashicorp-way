# see https://registry.terraform.io/modules/Azure/aks/azurerm/4.7.0
module "aks" {
  source  = "Azure/aks/azurerm"
  version = "4.7.0"

  kubernetes_version   = var.cluster_version
  orchestrator_version = var.cluster_version
  resource_group_name  = azurerm_resource_group.project.name
  prefix               = var.project_name
  agents_count         = 3
  vnet_subnet_id       = module.network.vnet_subnets[0]
  os_disk_size_gb      = 100

  # see https://www.terraform.io/docs/language/meta-arguments/depends_on.html
  depends_on = [
    module.network
  ]
}
