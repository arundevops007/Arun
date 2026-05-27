terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "hello"
  #   storage_account_name = "hellostore1001"
  #   container_name       = "mycontainertest1"
  #   key                  = "terraform.tfstate"

  # }
}

provider "azurerm" {
  features {}
}
