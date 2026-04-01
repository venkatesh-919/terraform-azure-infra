module "keyvault" {
  source = "./modules/keyvault"

  dev_rg_name   = var.dev_rg_name
  keyvault_name = var.keyvault_name
  sku_name_acr      = var.sku_name_acr
}

module "aks" {
  source = "./modules/aks"

  dev_rg_name = var.dev_rg_name
  aks_name    = var.aks_name
  dns_prefix  = var.dns_prefix
  node_count  = var.node_count
  vm_size     = var.vm_size
  environment = var.environment
}

module "acr" {
  source = "./modules/acr"

  dev_rg_name = var.dev_rg_name
  acr_name    = var.acr_name
  sku_name    = var.sku_name
  environment = var.environment
}

module "vnet" {
  source = "./modules/vnet"

  dev_rg_name   = var.dev_rg_name
  vnet_name     = var.vnet_name
  address_space = var.address_space
  environment   = var.environment
}

module "subnet" {
  source = "./modules/subnet"

  dev_rg_name      = var.dev_rg_name
  vnet_name        = var.vnet_name
  subnet_name      = var.subnet_name
  address_prefixes = var.address_prefixes
  depends_on = [ module.vnet ]
}

module "private_endpoint" {
  source = "./modules/private_endpoints"

  dev_rg_name                 = var.dev_rg_name
  private_endpoint_name       = var.private_endpoint_name
  subnet_id                   = module.subnet.subnet_id
  private_service_resource_id = var.private_service_resource_id
  environment                 = var.environment
  subresource_names = var.subresource_names
}