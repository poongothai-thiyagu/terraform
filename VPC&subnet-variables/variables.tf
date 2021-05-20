variable "project_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "network_name" {
  description = "The name of the network being created"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  default     = false
}

variable "publicsubnet_name" {
  description = "The name of the public subnet being created"
}

variable "cidr_range" {
  type        =	string
  description = "The name of the public subnet being created"
}


variable "publicregion_name" {
  description = "The name of the region being created"
}
