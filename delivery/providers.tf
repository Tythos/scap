provider "kubernetes" {
  host                   = var.K8S_HOST
  client_certificate     = base64decode(var.K8S_CERT)
  client_key             = base64decode(var.K8S_KEY)
  cluster_ca_certificate = base64decode(var.K8S_CA)
}
