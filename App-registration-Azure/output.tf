output "subscription_id" {
  value = data.azurerm_subscription.current.subscription_id
}

output "subscription_name" {
  value = data.azurerm_subscription.current.display_name
}

output "Resource_group" {
    value = azurerm_resource_group.example.id
}