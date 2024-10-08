resource "kubernetes_storage_class" "prom-sc" {
  metadata {
    name = "prom-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp3"
    iops = 3000
    encrypted = "true"
  }
}

resource "kubernetes_storage_class" "prom-sc2" { #storage for alert manager
  metadata {
    name = "prom-sc2"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp3"
    iops = 3000
    encrypted = "true"
  }
}

resource "kubernetes_storage_class" "graf-sc" {
  metadata {
    name = "graf-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp3"
    iops = 3000
    encrypted = "true"
  }
}

