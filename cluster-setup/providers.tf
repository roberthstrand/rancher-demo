terraform {
  required_providers {
    azurerm = {
      version = "=2.49.0"
    }
    azuread = {
      version = "=1.3.0"
    }
  }
}
provider "azurerm" {
  features {}
}
provider "kubernetes" {
  host = module.kubernetes.host

  client_certificate     = base64decode(module.kubernetes.client_certificate)
  client_key             = base64decode(module.kubernetes.client_key)
  cluster_ca_certificate = base64decode(module.kubernetes.cluster_ca_certificate)
}