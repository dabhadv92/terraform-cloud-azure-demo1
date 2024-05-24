
resource "google_compute_instance" "vm-remote-custom-module" {
    name = var.vm-name
    machine_type = "e2-standard-4"
    allow_stopping_for_update = true

    

    network_interface {
      network = google_compute_network.demo-vpc-child.name
      subnetwork = google_compute_subnetwork.demo-subnet-child.name
      

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





