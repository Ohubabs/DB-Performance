##NGINX

/*resource "kubernetes_ingress_v1" "logs-ingress" {
  wait_for_load_balancer = true
  metadata {
    name = "logs-ingress"
    namespace = "monitor"
    annotations = {
        "cert-manager.io/cluster-issuer" = "monitor-issuer"
  }
  }
  spec {
    ingress_class_name = "nginx"
    tls {
      secret_name = "logs-secret"
      hosts = ["logs.devopsnetwork.net"] 
    }
    rule {
      host = "logs.devopsnetwork.net"  
      http {
        path {
          path = "/"
          backend {
            service {
              name = "kibana-kibana" 
              port {
                number = 5601 
              }
            }
          }
        }
      }
    }
  }
}*/
