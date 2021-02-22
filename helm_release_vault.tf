# see https://registry.terraform.io/providers/hashicorp/helm/2.0.2/docs/resources/release
resource "helm_release" "vault" {
  name       = "vault"
  chart      = "vault"
  repository = "https://helm.releases.hashicorp.com"

  # see https://github.com/hashicorp/vault-helm/tags
  version = "0.9.1"

  values = [
    file("charts/vault.yaml")
  ]

  set {
    name  = "server.ha.raft.config"
    value = var.vault_config
  }
}
