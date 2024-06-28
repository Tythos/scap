resource "docker_registry_image" "frontregistryimage" {
  name          = docker_image.frontimage.name
  keep_remotely = true
}
