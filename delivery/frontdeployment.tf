resource "kubernetes_deployment" "frontdeployment" {
  metadata {
    name      = "frontdeployment"
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }

  spec {
    selector {
      match_labels = {
        app = "${var.NAMESPACE}-front"
      }
    }

    template {
      metadata {
        labels = {
          app = "${var.NAMESPACE}-front"
        }
      }

      spec {
        container {
          image = docker_image.frontimage.name
          name  = "${var.NAMESPACE}-front"
        }
      }
    }
  }
}
