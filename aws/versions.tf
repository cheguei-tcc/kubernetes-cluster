terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72"
    }

    tls = {
      source  = "hashicorp/tls"
      version = ">= 2.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "cheguei"

    workspaces {
      name = "infrastructure-core"
    }
  }

  required_version = ">= 0.14"
}