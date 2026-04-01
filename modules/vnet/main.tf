data "azurerm_resource_group" "dev" {
  name = var.dev_rg_name
}

resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  location            = data.azurerm_resource_group.dev.location
  resource_group_name = data.azurerm_resource_group.dev.name
  address_space       = var.address_space

  tags = {
    Environment = var.environment
  }
}