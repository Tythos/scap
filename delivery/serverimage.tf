resource "docker_image" "serverimage" {
  name = "${var.REGISTRY_HOST}/${var.REGISTRY_USERNAME}/${var.APP_NAME}-server:${var.VERSION_TAG}"

  build {
    context = "${abspath(path.root)}/server"
  }
}
