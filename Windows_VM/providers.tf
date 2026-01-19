terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.6.1"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id="6a6991ac-13fa-4cad-8cb4-87d94302dd32"
}