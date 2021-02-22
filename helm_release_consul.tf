# see https://registry.terraform.io/providers/hashicorp/helm/2.0.2/docs/resources/release
resource "helm_release" "consul" {
  name       = "hashicorp"
  chart      = "consul"
  repository = "https://helm.releases.hashicorp.com"

  # see https://github.com/hashicorp/consul-helm/tags
  version = "0.29.0"

  values = [
    file("charts/consul.yaml")
  ]

  set {
    name  = "global.datacenter"
    value = var.project_name
  }

  # see https://www.terraform.io/docs/language/meta-arguments/depends_on.html
  depends_on = [
    kubernetes_secret.consul_gossip_encryption_key
  ]
}
