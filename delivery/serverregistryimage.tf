resource "docker_registry_image" "serverregistryimage" {
  name          = docker_image.serverimage.name
  keep_remotely = true
}
