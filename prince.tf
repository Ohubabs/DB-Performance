
resource "kubernetes_secret_v1" "graf-auth" {
  metadata {
    name = "vegeta"
    namespace = "monitor"
  }

  data = {
    garlickgun = var.garlickgun
    finalflash = var.finalflash
  }

  type = "Opaque"
}

