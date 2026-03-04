# modules/vpc/versions.tf
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "ginthi-entrans"
  region  = "asia-south1"
  zone    = "asia-south1-a"
}
