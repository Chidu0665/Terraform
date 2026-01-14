data "azurerm_subscription" "current" {}

resource "azurerm_resource_group" "example" {
  name     = "rg-terra-chidu"
  location = "West Europe"
}

# variable "location" {
#     type = string
#     default = "east europe"

# }
# variable "rg_name" {
#     type = string
#     default = "east_eupore_rg"
# }