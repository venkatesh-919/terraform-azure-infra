terraform {
  backend "azurerm" {
    resource_group_name  = "dev-rg"   # change if different
    storage_account_name = "terraformazureinfra"
    container_name       = "terraform-backendstatefile"
    key                  = "terraform-dev.tfstate"
  }
}
