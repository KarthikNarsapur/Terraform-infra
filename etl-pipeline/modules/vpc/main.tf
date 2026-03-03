resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id
  routing_mode            = var.routing_mode

    labels = {
    env     = "dev"
  }
}

resource "google_compute_subnetwork" "public_subnet_1" {
  name                     = var.subnet_name_1
  ip_cidr_range            = var.subnet_cidr_range_pub_1
  region                   = var.subnet_region_1
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true   # allows VMs to reach Google APIs without public IPs

    labels = {
    env     = "dev"
  }
}

resource "google_compute_subnetwork" "private_subnet_1" {
  name                     = var.subnet_name_private_1
  ip_cidr_range            = var.subnet_cidr_range_private_1
  region                   = var.subnet_region_1          # asia-south1 (Mumbai)
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true
  purpose = "PRIVATE"

    labels = {
    env     = "dev"
  }
}

resource "google_compute_subnetwork" "public_subnet_2" {
  name                     = var.subnet_name_2
  ip_cidr_range            = var.subnet_cidr_range_pub_2
  region                   = var.subnet_region_2
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true   # allows VMs to reach Google APIs without public IPs

    labels = {
    env     = "dev"
  }
}

resource "google_compute_subnetwork" "private_subnet_2" {
  name                     = var.subnet_name_private_2
  ip_cidr_range            = var.subnet_cidr_range_private_2
  region                   = var.subnet_region_2          
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true
  purpose = "PRIVATE"

    labels = {
    env     = "dev"
  }
}


resource "google_compute_router" "router" {
  name    = var.router_name
  region  = var.router_region
  network = google_compute_network.vpc_network.id

  bgp {
    asn = var.router_asn   # private ASN range: 64512–65534
  }

    labels = {
    env     = "dev"
  }
}

resource "google_dns_policy" "private_dns" {
  name                      = "flipkart-dev-dns-policy"
  enable_inbound_forwarding = false
  enable_logging            = true

  networks {
    network_url = google_compute_network.vpc_network.id
  }

    labels = {
    env     = "dev"
  }
}
