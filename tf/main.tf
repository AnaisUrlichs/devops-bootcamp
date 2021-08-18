terraform {
  backend "remote" {
    organization = "civo-bootcamp"

    workspaces {
      name = "bootcamp-build-deploy"
    }
  }
}


