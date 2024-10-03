
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

/*resource "kubernetes_secret_v1" "elastic-auth" {
  metadata {
    name = "food-1"
    namespace = "apm"
  }

  data = {
    username = var.frieza
    password = var.deathbeam
  }

  type = "Opaque"
}*/
