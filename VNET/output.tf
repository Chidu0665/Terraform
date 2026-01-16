output "rg-id" {
  value = data.azurerm_resource_group.example.id
}

output "vnet-id" {
    value = azurerm_virtual_network.vnet.id
}