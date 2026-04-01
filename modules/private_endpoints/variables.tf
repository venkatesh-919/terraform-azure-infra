variable "dev_rg_name" {
  type = string
}

variable "private_endpoint_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "private_service_resource_id" {
  type = string
}

variable "environment" {
  type = string
}

variable "subresource_names" {
  type = list(string)
}