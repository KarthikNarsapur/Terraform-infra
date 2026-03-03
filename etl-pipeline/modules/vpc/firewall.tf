resource "google_compute_firewall" "allow_ssh" {
  name    = var.firewall_rule_name
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh-access"]


}


# resource "google_compute_firewall" "deny_all_egress" {
#   name      = "flipkart-dev-deny-all-egress"
#   network   = google_compute_network.vpc_network.name
#   direction = "EGRESS"
#   priority  = 65534

#   deny {
#     protocol = "all"
#   }

#   destination_ranges = ["0.0.0.0/0"]

#   labels = {
#     env     = "dev"
#   }
# }

resource "google_compute_firewall" "allow_https_egress" {
  name      = "flipkart-dev-allow-https-egress"
  network   = google_compute_network.vpc_network.name
  direction = "EGRESS"
  priority  = 1000

  allow {
    protocol = "tcp"
    ports    = ["443", "80"]
  }

  destination_ranges = ["0.0.0.0/0"]


}
