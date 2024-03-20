terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.95"
    }
  }

  required_version = ">= 0.12"
}

provider "azurerm" {
  features {}
}