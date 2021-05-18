resource "google_compute_network" "proxy" {
  name = "proxy"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "subnet" {
  provider = google-beta
  name          = "proxy-subnet"
  network       = google_compute_network.proxy.id
  ip_cidr_range = "10.0.0.0/24"
  region        = "asia-south1"
  purpose       = "INTERNAL_HTTPS_LOAD_BALANCER"
  role          = "ACTIVE"
}
