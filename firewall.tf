resource "google_compute_firewall" "http-server" {
  name    = "allow"
  network = "test1"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}
