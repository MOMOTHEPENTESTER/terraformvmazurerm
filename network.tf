# azure virtual network 
resource "azurerm_virtual_network" "terraformvnet" {
  name                = "azurevnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terraformdemo01.location
  resource_group_name = azurerm_resource_group.terraformdemo01.name
}

# azure subnet
resource "azurerm_subnet" "terraformsubnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.terraformdemo01.name
  virtual_network_name = azurerm_virtual_network.terraformvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

# allocating public ip
resource "azurerm_public_ip" "terrapublicip" {
  name                = "windowspublicip"
  resource_group_name = azurerm_resource_group.terraformdemo01.name
  location            = azurerm_resource_group.terraformdemo01.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}