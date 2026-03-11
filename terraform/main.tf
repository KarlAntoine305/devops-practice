# Configure Terraform to use the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Create an Azure Resource Group
resource "azurerm_resource_group" "devops_lab" {
  name     = "devops-lab-rg"
  location = "East US"
}
