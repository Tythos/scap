resource "docker_image" "frontimage" {
  name = "${var.REGISTRY_HOST}/${var.REGISTRY_USERNAME}/${var.APP_NAME}-front:${var.VERSION_TAG}"

  build {
    context = "${abspath(path.root)}/front"
  }
}
