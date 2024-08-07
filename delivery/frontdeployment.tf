resource "kubernetes_deployment" "frontdeployment" {
  metadata {
    name      = "frontdeployment"
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }

  spec {
    selector {
      match_labels = {
        app = "${var.APP_NAME}-front"
      }
    }

    template {
      metadata {
        labels = {
          app = "${var.APP_NAME}-front"
        }
      }

      spec {
        container {
          image = docker_registry_image.frontregistryimage.name
          name  = "${var.APP_NAME}-front"
        }
      }
    }
  }
}
