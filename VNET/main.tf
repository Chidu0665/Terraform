data "azurerm_resource_group" "example" {
  name = "rg-terra-chidu"
}

variable "location" {
  type        = string
  default     = "west europe"
}

resource "azurerm_virtual_network" "vnet" {
    name = "chidu-vnet"
    resource_group_name = data.azurerm_resource_group.example.name
    location = var.location
    address_space = ["10.0.0.0/16"]
    subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
}
resource "azurerm_subnet" "example" {
  name                 = "res-subnet"
  resource_group_name  = data.azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}