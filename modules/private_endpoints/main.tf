data "azurerm_resource_group" "rg" {
  name = var.dev_rg_name
}

resource "azurerm_private_endpoint" "example" {
  name                = var.private_endpoint_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.private_endpoint_name}-connection"
    private_connection_resource_id = var.private_service_resource_id
    is_manual_connection           = false
    subresource_names = var.subresource_names
  }

  tags = {
    Environment = var.environment
  }
}