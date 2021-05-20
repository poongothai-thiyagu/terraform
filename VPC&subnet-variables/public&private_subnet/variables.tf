variable "network_name" {
  description = "The name of the network being created"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  default     = false
}

variable "public_name" {
  description = "The name of the public subnet being created"
}

variable "public_cidr_range" {
  type        =	string
  description = "The name of the public subnet being created"
}

variable "public_region_name" {
  description = "The name of the region being created"
}

variable "private_name" {
  description = "The name of the public subnet being created"
}

variable "private_cidr_range" {
  type        =	string
  description = "The name of the public subnet being created"
}

variable "private_region_name" {
  description = "The name of the region being created"
}

variable "private"{
  type        = bool
 }
