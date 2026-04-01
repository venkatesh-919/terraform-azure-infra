data "azurerm_resource_group" "dev" {
  name = var.dev_rg_name
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.dev.name
  location            = data.azurerm_resource_group.dev.location

  sku           = var.sku_name
  admin_enabled = false

  tags = {
    Environment = var.environment
  }
}