module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "3.2.2"

  project_id   = "trial-299510"
  network_name = "vpc"
  routing_mode = "REGIONAL"

  delete_default_internet_gateway_routes = "true"

  subnets = [
    {
      subnet_name           = "public"
      subnet_ip             = "10.0.0.0/24"
      subnet_region         = "us-west2"
      subnet_private_access = "false"
      subnet_flow_logs      = "false"
    },
    {
      subnet_name           = "private"
      subnet_ip             = "10.0.1.0/24"
      subnet_region         = "us-west2"
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
    }
  ]
}