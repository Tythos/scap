resource "kubernetes_namespace" "namespace" {
  metadata {
    name = "${var.APP_NAME}namespace"
  }
}
