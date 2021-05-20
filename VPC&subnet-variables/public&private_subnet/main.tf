#VPC network
resource "google_compute_network" "network" {
  name                            = var.network_name
  auto_create_subnetworks         = var.auto_create_subnetworks
 }
#public subnet
resource "google_compute_subnetwork" "public" {
  name                            = var.public_name
  ip_cidr_range					  = var.public_cidr_range
  region						  = var.public_region_name
  network						  = google_compute_network.network.id
  }
#private subnet
resource "google_compute_subnetwork" "private" {
  name                            = var.private_name
  ip_cidr_range					  = var.private_cidr_range
  region						  = var.private_region_name
  network						  = google_compute_network.network.id
  private_ip_google_access		  = var.private
  }

