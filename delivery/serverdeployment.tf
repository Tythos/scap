resource "kubernetes_deployment" "serverdeployment" {
  metadata {
    name      = "serverdeployment"
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }

  spec {
    selector {
      match_labels = {
        app = "${var.APP_NAME}-server"
      }
    }

    template {
      metadata {
        labels = {
          app = "${var.APP_NAME}-server"
        }
      }

      spec {
        container {
          image = docker_registry_image.serverregistryimage.name
          name  = "${var.APP_NAME}-server"
        }
      }
    }
  }
}
