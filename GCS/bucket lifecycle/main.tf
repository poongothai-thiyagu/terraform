# Specify the GCP Provider
provider "google" {
project = var.project_id
region  = var.region
}

# Create a GCS Bucket
resource "google_storage_bucket" "my_bucket" {
name     = var.bucket_name
location = var.region
uniform_bucket_level_access = var.access
}

# life cycle settings for storage bucket objects
  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }