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
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
provider "azurerm" {
  features {}
  client_id="6d891c3a-0469-4825-a35d-11a3387af615"
  client_secret="idP8Q~MRz6h6YP1-6zi5gQ1oc3bEuY1zeHjnzcNX" 
  tenant_id="9c1e50f3-2148-40bc-b941-0f3e5c9ceeb6"
  subscription_id="6a6991ac-13fa-4cad-8cb4-87d94302dd32"

}