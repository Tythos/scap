variable "K8S_HOST" {
  type        = string
  description = "Host address for Kubernetes control pane"
}

variable "K8S_CERT" {
  type        = string
  description = "Encoded certificate for Kubernetes administrator"
}

variable "K8S_KEY" {
  type        = string
  description = "Encoded client key for Kubernetes administrator"
}

variable "K8S_CA" {
  type        = string
  description = "Encoded PEM for cluster certificate authority"
}

variable "APP_NAME" {
  type        = string
  description = "Name used to define shared labels, namespace, and other titles"
}

variable "REGISTRY_USERNAME" {
  type        = string
  description = "Username for image registry (e.g., Docker Hub)"
}

variable "REGISTRY_CREDENTIAL" {
  type        = string
  description = "Password or token to use when authenticating to the image registery (e.g., Docker Hub)"
}

variable "REGISTRY_HOST" {
  type        = string
  description = "Address of registry used as interim image storage"
}

variable "VERSION_TAG" {
  type        = string
  description = "Semantic version used to indicate tag attached to specific images generated/pushed/deployed"
}
