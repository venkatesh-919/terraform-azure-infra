variable "dev_rg_name" {
  description = "Resource group name"
  type        = string
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}

variable "sku_name" {
  description = "ACR SKU"
  type        = string
}

variable "environment" {
  description = "Environment tag"
  type        = string
}