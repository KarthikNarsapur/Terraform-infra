# VPC
output "vpc_id" {
  description = "The ID of the VPC network"
  value       = google_compute_network.vpc_network.id
}

output "vpc_name" {
  description = "The name of the VPC network"
  value       = google_compute_network.vpc_network.name
}

output "vpc_self_link" {
  description = "The self link of the VPC network"
  value       = google_compute_network.vpc_network.self_link
}

# Mumbai Subnets
output "mumbai_public_subnet_id" {
  description = "ID of the Mumbai public subnet"
  value       = google_compute_subnetwork.public_subnet_1.id
}

output "mumbai_public_subnet_self_link" {
  description = "Self link of the Mumbai public subnet"
  value       = google_compute_subnetwork.public_subnet_1.self_link
}

output "mumbai_private_subnet_id" {
  description = "ID of the Mumbai private subnet"
  value       = google_compute_subnetwork.private_subnet_1.id
}

output "mumbai_private_subnet_self_link" {
  description = "Self link of the Mumbai private subnet — used by Dataflow worker config"
  value       = google_compute_subnetwork.private_subnet_1.self_link
}

# Delhi Subnets
output "delhi_public_subnet_id" {
  description = "ID of the Delhi public subnet"
  value       = google_compute_subnetwork.public_subnet_2.id
}

output "delhi_public_subnet_self_link" {
  description = "Self link of the Delhi public subnet"
  value       = google_compute_subnetwork.public_subnet_2.self_link
}

output "delhi_private_subnet_id" {
  description = "ID of the Delhi private subnet"
  value       = google_compute_subnetwork.private_subnet_2.id
}

output "delhi_private_subnet_self_link" {
  description = "Self link of the Delhi private subnet — used by Dataflow worker config"
  value       = google_compute_subnetwork.private_subnet_2.self_link
}

# Routers
output "mumbai_router_name" {
  description = "Name of the Mumbai Cloud Router"
  value       = google_compute_router.router.name
}

output "delhi_router_name" {
  description = "Name of the Delhi Cloud Router"
  value       = google_compute_router.router_delhi.name
}

# Private Service Access
output "private_service_range_name" {
  description = "Reserved IP range name for private service access — used by Cloud SQL module"
  value       = google_compute_global_address.private_service_range.name
}

output "private_service_connection_id" {
  description = "ID of the private service networking connection"
  value       = google_service_networking_connection.private_service_connection.id
}
