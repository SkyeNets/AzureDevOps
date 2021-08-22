# TERRAFORM BACKEND


terraform {
  backend "azurerm" {
    resource_group_name  = "SkyeLab-rg"
    storage_account_name = "skyeremotesa01"
    container_name       = "tfstate"
    key                  = "backend.tfstate"
  }

}

