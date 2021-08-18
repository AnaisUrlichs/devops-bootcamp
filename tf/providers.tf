terraform {
  required_providers {
    civo = {
      source  = "civo/civo"
      version = "0.10.9"
    }
  }
}

variable "CIVO_TOKEN" {}

provider "civo" {
  token = var.CIVO_TOKEN
}