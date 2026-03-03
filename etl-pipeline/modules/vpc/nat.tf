resource "google_compute_router_nat" "nat" {
  name                               = var.nat_name
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }


}

resource "google_compute_router" "router_delhi" {
  name    = "flipkart-dev-router-delhi"
  region  = var.subnet_region_2          # asia-south2
  network = google_compute_network.vpc_network.id

  bgp {
    asn = var.router_asn
  }


}

resource "google_compute_router_nat" "nat_delhi" {
  name                               = "flipkart-dev-nat-delhi"
  router                             = google_compute_router.router_delhi.name
  region                             = google_compute_router.router_delhi.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }


}
