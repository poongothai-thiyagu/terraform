provider "google" {
  version = "3.5.0"
  project = "trial-299510"
  region  = "asia-south1"
  zone    = "asia-south1"
}
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
resource "google_compute_subnetwork" "public-subnetwork" {
  name          = "terraform-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "asia-south1"
  network       = google_compute_network.vpc_network.name
  }
