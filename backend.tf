# TERRAFORM BACKEND


terraform {
  backend "azurerm" {
    resource_group_name  = "skyelab-remote-rg"
    storage_account_name = "skyeremotesa01"
    container_name       = "tfstate"
    key                  = "backend.tfstate"
    subscription_id = "561e8bcf-bcc2-424d-ab9b-508631bfa49c"
  }

}

