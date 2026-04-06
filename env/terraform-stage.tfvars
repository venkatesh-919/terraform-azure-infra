dev_rg_name   = "stage-rg"
keyvault_name = "stagekv12345678"
sku_name      = "Standard"
sku_name_acr  = "standard"

aks_name   = "stage-aks1"
dns_prefix = "stageaks1"
vm_size    = "Standard_D2_v2"

environment = "stage"

acr_name   = "stageacr123456"
vnet_name  = "stage-vnet"

address_space    = ["10.2.0.0/16"]
subnet_name      = "stage-subnet"
address_prefixes = ["10.2.1.0/24"]

private_endpoint_name = "stage-private-endpoint"
private_service_resource_id = "/subscriptions/xxxx/resourceGroups/stage-rg/providers/Microsoft.KeyVault/vaults/stagekv12345678"

node_count = 2
subresource_names = ["vault"]