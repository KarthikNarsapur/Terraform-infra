resource "google_compute_instance" "vm" {
  name         = "etl-vm"
  machine_type = "e2-micro"
  zone         = var.zone
  project      = var.project_id

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 32
    }
  }

  network_interface {
    subnetwork = var.subnetwork

    access_config {}
  }

  metadata_startup_script = <<-EOF
  #!/bin/bash
  apt update -y
  apt install -y apache2
  systemctl start apache2
  EOF
}