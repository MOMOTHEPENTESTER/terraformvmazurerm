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
  features {}
}

# azure resouce and location allocation

resource "azurerm_resource_group" "terraformdemo01" {
  name     = "rg-westeurope-01"
  location = "West Europe"
}
