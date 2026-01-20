##reading the existing Linux VM
data "azurerm_virtual_machine" "vm" {
  name                = "Chidu-machine"
  resource_group_name = "Chidu-Jenkins"
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
