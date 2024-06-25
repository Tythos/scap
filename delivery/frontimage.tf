resource "docker_image" "frontimage" {
  name = "frontimage"

  build {
    context = "../front"
    tag     = ["scap:frontimage"]
  }
}
