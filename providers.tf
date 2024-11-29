# We strongly recommend using the required_providers block to set the

# Azure Provider source and version being used

terraform {

  required_providers {

    azurerm = {

      source  = "hashicorp/azurerm"

      version ="=4.1.0"

    }

  }

}
 
# Configure the Microsoft Azure Provider

provider "azurerm" {

  ## resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.

   subscription_id = "3ed31a29-541f-46c2-bbf2-e8d1db764848"

  features {}

}
 
# Create a resource group

resource "azurerm_resource_group" "terra-demo" {

  name     = "terra-demo-rg"

  location = "Central India"

}
 
