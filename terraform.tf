terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.0.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.0.2"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.46.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.0.2"
    }
  }

  required_version = "0.14.7"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "onlydole"

    workspaces {
      name = "aks-the-hashicorp-way"
    }
  }
}

