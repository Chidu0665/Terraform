resource "azurerm_resource_group" "example" {
  name     = "chiduazuretest"
  location = "north Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "chiduazureteststorage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_share" "example" {
  name               = "sharechidu"
  storage_account_id = azurerm_storage_account.example.id
  quota              = 50
}
##reading the existing Linux VM
data "azurerm_virtual_machine" "vm" {
  name                = "Chidu-machine"
  resource_group_name = "Chidu-Jenkins"
}
#Mounting the Fileshare
resource "azurerm_virtual_machine_extension" "mount_fileshare" {
  name                 = "mount-fileshare"
  virtual_machine_id   = data.azurerm_virtual_machine.vm.id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.1"

  settings = <<SETTINGS
{
  "commandToExecute": "sudo apt-get update && sudo apt-get install -y cifs-utils && sudo mkdir -p /mnt/fileshare && sudo mount -t cifs //${azurerm_storage_account.example.name}.file.core.windows.net/${azurerm_storage_share.example.name} /mnt/fileshare -o vers=3.0,username=${azurerm_storage_account.example.name},password=${azurerm_storage_account.example.primary_access_key},dir_mode=0777,file_mode=0777,serverino"
}
SETTINGS
}

