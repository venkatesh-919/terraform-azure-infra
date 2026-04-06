dev_rg_name   = "prod-rg"
keyvault_name = "prodkv12345678"
sku_name      = "Standard"
sku_name_acr  = "premium"

aks_name   = "prod-aks1"
dns_prefix = "prodaks1"
vm_size    = "Standard_D4_v2"

environment = "prod"

acr_name   = "prodacr123456"
vnet_name  = "prod-vnet"

address_space    = ["10.3.0.0/16"]
subnet_name      = "prod-subnet"
address_prefixes = ["10.3.1.0/24"]

private_endpoint_name = "prod-private-endpoint"
private_service_resource_id = "/subscriptions/xxxx/resourceGroups/prod-rg/providers/Microsoft.KeyVault/vaults/prodkv12345678"

node_count = 3
subresource_names = ["vault"]