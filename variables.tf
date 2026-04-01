variable "dev_rg_name" {
  type = string
}

variable "keyvault_name" {
  type = string
}

variable "sku_name" {
  type = string
}

variable "sku_name_acr" {
  type = string
}

variable "subresource_names" {
  type = list(string)
}

variable "aks_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type = number
}

variable "vm_size" {
  type = string
}

variable "environment" {
  type = string
}

variable "acr_name" {
  type = string
}


variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "address_prefixes" {
  type = list(string)
}

variable "private_endpoint_name" {
  type = string
}

variable "private_service_resource_id" {
  type = string
}


