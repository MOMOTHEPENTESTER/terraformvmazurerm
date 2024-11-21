resource "azurerm_network_interface" "terraformdemo" {
  name                = "terra-nic"
  location            = azurerm_resource_group.terraformdemo01.location
  resource_group_name = azurerm_resource_group.terraformdemo01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.terraformsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.terrapublicip.id

  }
}

resource "azurerm_windows_virtual_machine" "terraformdemo" {
  name                = "virtualmachine"
  resource_group_name = azurerm_resource_group.terraformdemo01.name
  location            = azurerm_resource_group.terraformdemo01.location
  size                = "Standard_B2ts_v2"
  admin_username      = "tester"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.terraformdemo.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
