resource "google_compute_instance" "test" {
  zone         = var.zone
  machine_type = var.instance_machine_type

  tags  = var.network_tags
  name  = var.name[count.index]
  count = length(var.name)

  boot_disk {
    initialize_params {
      size  = var.boot_disk_size
      type  = var.boot_disk_type
      image = var.boot_disk_image
    }
  }


  network_interface {
    network = var.vpc_network_name

    access_config {

    }
  }

}
