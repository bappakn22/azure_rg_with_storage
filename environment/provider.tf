terraform {
  #required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.37.0"
    }

  }
backend "azurerm" {
    resource_group_name = "bappa-remotestate-rg"
    storage_account_name = "bappastatefiles"
    container_name = "statecfiles"
    key = "gittfbasic.tfstate"
}
  
}


provider "azurerm" {
    features {}
    subscription_id = "661ea49e-05d4-429e-8204-de0d46c539b5"
  
}
