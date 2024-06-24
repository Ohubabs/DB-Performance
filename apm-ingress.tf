/*resource "kubernetes_ingress_v1" "apm" {
  wait_for_load_balancer = true
  metadata {
    name = "apm"
    namespace = "monitor"
    annotations = {
        "cert-manager.io/cluster-issuer" = "monitor-issuer"
  }
  }
  spec {
    ingress_class_name = "nginx"
    tls {
      secret_name = "prometheus-secret"
      hosts = ["prometheus.devopsnetwork.net","grafana.devopsnetwork.net"] 
    }
    rule {
      host = "prometheus.devopsnetwork.net"  
      http {
        path {
          path = "/"
          backend {
            service {
              name = "prometheus-server"
              port {
                number = 443
              }
            }
          }
        }
      }
    }
    rule {
      host = "grafana.devopsnetwork.net"  
      http {
        path {
          path = "/"
          backend {
            service {
              name = "grafana"
              port {
                number = 443
              }
            }
          }
        }
      }
    }
  }
}*/
