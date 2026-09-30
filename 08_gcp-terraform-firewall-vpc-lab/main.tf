terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {}

resource "google_compute_network" "lab_vpc" {
  name                    = "gcp-mastery-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "lab_subnet" {
  name          = "gcp-mastery-subnet"
  ip_cidr_range = "10.10.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.lab_vpc.id
}

resource "google_compute_firewall" "lab_ingress" {
  name    = "gcp-mastery-lab-ingress"
  network = google_compute_network.lab_vpc.name

  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }
}

output "network_name" {
  value = google_compute_network.lab_vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.lab_subnet.name
}
