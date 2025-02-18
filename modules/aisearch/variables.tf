variable "resource_group_name" {
  description = "The name of the resource group in which to create the search service."
  type        = string
}


variable "location" {}

variable "search_service_name" {
  description = "The name of the Azure Search service."
  type        = string
}


variable "search_sku" {
  description = "The SKU of the search service."
  type        = string
  default     = "standard"
}

variable "replica_count" {
  description = "The number of replicas to create in the search service."
  type        = number
  default     = 1
}

variable "partition_count" {
  description = "The number of partitions to create in the search service."
  type        = number
  default     = 1
}


