terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.18.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
  required_version = ">= 1.9.0 <= 2.0.0"
}