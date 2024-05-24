
resource "google_compute_instance" "vm-remote-custom-module" {
    name = var.vm-name
    machine_type = var.vm-type
    allow_stopping_for_update = true

    

    network_interface {
      network = var.vpc-name
      subnetwork = var.subnet-name
      

      /*
      access_config {
        nat_ip = "35.207.215.144"
        network_tier = "STANDARD"
      }

    */
    }

    boot_disk {
      initialize_params {
        image = "debian-12-bookworm-v20240415"
        size = 10

      }
    }

     lifecycle {
      create_before_destroy = true
    }

    metadata = {
      serial-port-enable = true
    }
  

}





