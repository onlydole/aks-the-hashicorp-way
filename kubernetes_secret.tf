# see https://registry.terraform.io/providers/hashicorp/kubernetes/2.0.1/docs/resources/secret
resource "kubernetes_secret" "consul_gossip_encryption_key" {
  metadata {
    name = "consul-gossip-encryption-key"
  }

  # This hard-coded value is for demonstration purposes only. This is NOT a best-practice!
  # For secrets management, we recommend HashiCorp Vault and your preferred cloud secret management service(s).
  data = {
    key = "VuM/Fj4rf+QFUD8jo4Hg7k2JEKMjAMFHOePPXTkXqxE="
  }

  type = "Opaque"
}
