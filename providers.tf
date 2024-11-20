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
  subscription_id = "75cb4c18-67ce-4bdf-a080-22e4e721e909"
  features {}
}

# azure resouce and location allocation

resource "azurerm_resource_group" "terraformdemo01" {
  name     = "rg-westeurope-01"
  location = "West Europe"
}