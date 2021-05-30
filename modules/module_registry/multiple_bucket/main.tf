resource "random_string" "prefix" {
  length  = 4
  upper   = false
  special = false
}

module "cloud_storage" {
  source     = "terraform-google-modules/cloud-storage/google"
  project_id = var.project_id
  prefix     = "multiple-buckets-${random_string.prefix.result}"

  names              = var.names
  bucket_policy_only = var.bucket_policy_only
  folders            = var.folders

  lifecycle_rules = [{
    action = {
      type          = "SetStorageClass"
      storage_class = "NEARLINE"
    }
    condition = {
      age                   = "10"
      matches_storage_class = "MULTI_REGIONAL,STANDARD,DURABLE_REDUCED_AVAILABILITY"
    }
  }]
}
