##reading the existing Linux VM
data "azurerm_virtual_machine" "vm" {
  name                = "chidu-windows"
  resource_group_name = "chiduazuretest"
}

##Creating an action group for the alert
resource "azurerm_monitor_action_group" "cpu_alert_ag" {
  name                = "cpu-alert-ag"
  resource_group_name = data.azurerm_virtual_machine.vm.resource_group_name
  short_name          = "CPUAlert"

  email_receiver {
    name          = "Chidambar P Bangre"
    email_address = "chidu0665@gmail.com"
  }
}
resource "azurerm_monitor_metric_alert" "cpu_high" {
  name                = "linux-vm-high-cpu"
  resource_group_name = data.azurerm_virtual_machine.vm.resource_group_name
  scopes              = [data.azurerm_virtual_machine.vm.id]
  description         = "Alert when CPU usage is above 80%"
  severity            = 2
  enabled             = true

  frequency   = "PT1M"   # check every 1 minute
  window_size = "PT5M"   # over last 5 minutes

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 10
  }

  action {
    action_group_id = azurerm_monitor_action_group.cpu_alert_ag.id
  }
}


