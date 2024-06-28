# resource "kubernetes_deployment" "servicedeployment" {
#   metadata {
#     name      = "servicedeployment"
#     namespace = kubernetes_namespace.namespace.metadata[0].name
#   }

#   depends_on = [docker_image.serviceimage]

#   spec {
#     selector {
#       match_labels = {
#         app = "${var.NAMESPACE}-service"
#       }
#     }

#     template {
#       metadata {
#         labels = {
#           app = "${var.NAMESPACE}-service"
#         }
#       }

#       spec {
#         container {
#           # this is a neat trick--but it's not obvious to me if this will work for remote clusters
#           image = docker_image.serviceimage.image_id
#           name  = docker_image.serviceimage.name
#         }
#       }
#     }
#   }
# }
