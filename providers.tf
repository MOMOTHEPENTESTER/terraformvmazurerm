# azure provider source and version

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
  subscription_id = "3ed31a29-541f-46c2-bbf2-e8d1db764848"
  client_id       = "39263461-669d-4879-9778-993f06237d62"
  tenant_id       = "f073749d-bd17-43e6-a513-94e63fdde905"
  features {}
}

# azure resouce and location allocation

resource "azurerm_resource_group" "terraformdemo01" {
  name     = "rg-westeurope-01"
  location = "West Europe"
}
