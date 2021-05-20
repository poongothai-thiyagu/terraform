resource "google_compute_network" "network" {
  name                            = var.network_name
  auto_create_subnetworks         = var.auto_create_subnetworks
 }

resource "google_compute_subnetwork" "publicsubnet" {
  name                            = var.publicsubnet_name
  ip_cidr_range					  = var.cidr_range
  region						  = var.publicregion_name
  network						  = google_compute_network.network.id
  }
  