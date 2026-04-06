dev_rg_name   = "qa-rg"
keyvault_name = "qakv12345678"
sku_name      = "Standard"
sku_name_acr  = "standard"

aks_name   = "qa-aks1"
dns_prefix = "qaaks1"
vm_size    = "Standard_D2_v2"

environment = "qa"

acr_name   = "qaacr123456"
vnet_name  = "qa-vnet"

address_space    = ["10.1.0.0/16"]
subnet_name      = "endpoint-subnet"
address_prefixes = ["10.1.1.0/24"]

private_endpoint_name = "qa-private-endpoint"
private_service_resource_id = "/subscriptions/7f26904a-dda4-4a02-bd88-67f7b8070968/resourceGroups/qa-rg/providers/Microsoft.KeyVault/vaults/qakv12345678"

node_count = 1
subresource_names = ["vault"]