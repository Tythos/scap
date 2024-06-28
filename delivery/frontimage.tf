resource "docker_image" "frontimage" {
  name = "${var.REGISTRY_HOST}/${var.REGISTRY_USERNAME}/${var.NAMESPACE}:front"

  build {
    context = "../front"
  }
}
