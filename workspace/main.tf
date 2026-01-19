data "azurerm_resource_group" "example" {
  name = "Chidu-Jenkins"
  
}
resource "azurerm_virtual_network" "example" {
  name                = "vnet0665"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
}
resource "azurerm_subnet" "example" {
    count = length(var.value_subnets)
  name                 = var.value_subnets[count.index].name
  resource_group_name  = data.azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.value_subnets[count.index].address
  depends_on = [azurerm_virtual_network.example]
}
data "azurerm_subnet" "example" {
  name                 = "test1-sub"
  virtual_network_name = azurerm_virtual_network.example.name
  resource_group_name  = data.azurerm_resource_group.example.name
}

#NSGS
resource "azurerm_network_security_group" "example" {
  name                = "acceptanceTestSecurityGroup1"
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Testing"
  }
}
#Public-IP
resource "azurerm_public_ip" "example" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  allocation_method   = "Static"
  sku               = "Standard"
  tags = {
    environment = "Production"
  }
    lifecycle {
    ignore_changes = [tags]
  }
}

#NIC
resource "azurerm_network_interface" "example" {
  name                = "anic-chidu"
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name

  ip_configuration {
    name                          = "chidu-internal"
    subnet_id                     = data.azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}
#Adding the NSF -> NIC
resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = azurerm_network_interface.example.id
  network_security_group_id = azurerm_network_security_group.example.id
}

#Virtual-network-creation
resource "azurerm_linux_virtual_machine" "example" {
  name                = "example-machine"
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  size                = "Standard_B2ls_v2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}