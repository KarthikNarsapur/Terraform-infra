output "public_subnet_1" {
  value = google_compute_subnetwork.public_subnet_1.id
}

output "private_subnet_1" {
  value = google_compute_subnetwork.private_subnet_1.id
}

output "vpc_id" {
  value = google_compute_network.vpc_network.id
}