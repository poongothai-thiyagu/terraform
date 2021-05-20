output "network" {
  value       = google_compute_network.network
  description = "The VPC resource being created"
}

output "network_name" {
  value       = google_compute_network.network.name
  description = "The name of the VPC being created"
}
output "subnets" {
  value       = google_compute_subnetwork.private
  description = "The created private subnet resources"
}