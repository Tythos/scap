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
          # this is a neat trick--but it's not obvious to me if this will work for remote clusters
          image = docker_image.frontimage.image_id
          name  = docker_image.frontimage.name
        }
      }
    }
  }
}
