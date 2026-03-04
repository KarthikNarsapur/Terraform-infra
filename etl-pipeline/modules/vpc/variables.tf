variable "vpc_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "flipkart-dev-vpc"
}

variable "project_id" {
  description = "Project ID for the VPC network"
  type        = string
#   default     = "flipkart-dev-project"
  default     = "ginthi-entrans"
}

variable "routing_mode" {
  description = "Routing mode for the VPC network (GLOBAL or REGIONAL)"
  type        = string
  default     = "GLOBAL"
}

variable "subnet_name_1" {
  description = "Name of the Mumbai subnet"
  type        = string
  default     = "flipkart-dev-pub-subnet-1"
}

variable "subnet_name_2" {
  description = "Name of the Delhi subnet"
  type        = string
  default     = "flipkart-dev-pub-subnet-2"
}

variable "subnet_name_private_1" {
  description = "Name of the Mumbai private subnet"
  type        = string
  default     = "flipkart-dev-priv-subnet-1"
}

variable "subnet_name_private_2" {
  description = "Name of the Delhi private subnet"
  type        = string
  default     = "flipkart-dev-priv-subnet-2"
}

variable "subnet_region_1" {
  description = "Region of the subnet"
  type        = string
  default     = "asia-south1"
}

variable "subnet_region_2" {
  description = "Region of the subnet"
  type        = string
  default     = "asia-south2"
}

variable "subnet_cidr_range_pub_1" {
  description = "CIDR range for the Mumbai public subnet"
  type        = string
  default     = "172.21.1.0/24"
}

variable "subnet_cidr_range_private_1" {
  description = "CIDR range for the Mumbai private subnet"
  type        = string
  default     = "172.21.2.0/24"
}

variable "subnet_cidr_range_pub_2" {
  description = "CIDR range for the Delhi public subnet"
  type        = string
  default     = "172.22.3.0/24"
}
variable "subnet_cidr_range_private_2" {
  description = "CIDR range for the Delhi private subnet"
  type        = string
  default     = "172.22.4.0/24"
}

variable "router_name" {
  description = "Name of the Cloud Router"
  type        = string
  default     = "flipkart-dev-router"
}

variable "router_region" {
  description = "Region for the Cloud Router"
  type        = string
  default     = "asia-south1"
}

variable "router_asn" {
  description = "ASN for the Cloud Router (private ASN range: 64512-65534)"
  type        = number
  default     = 64513
}

variable "nat_name" {
  description = "Name of the Cloud NAT"
  type        = string
  default     = "flipkart-dev-nat"
}

variable "firewall_rule_name" {
  description = "Name of the firewall rule to allow SSH"
  type        = string
  default     = "flipkart-dev-firewall-allow-ssh"
}
