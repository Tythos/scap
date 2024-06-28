terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  registry_auth {
    address  = var.REGISTRY_HOST
    username = var.REGISTRY_USERNAME
    password = var.REGISTRY_CREDENTIAL
  }
}

provider "kubernetes" {
  host                   = var.K8S_HOST
  client_certificate     = base64decode(var.K8S_CERT)
  client_key             = base64decode(var.K8S_KEY)
  cluster_ca_certificate = base64decode(var.K8S_CA)
}
