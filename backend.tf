# TERRAFORM BACKEND


terraform {
  backend "azurerm" {
    resource_group_name  = "skyelab-remote-rg"
    storage_account_name = "skyeremotesa01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    subscription_id      = "953ffea1-7504-4a80-b6ad-239156bd6baa"


  }

}

