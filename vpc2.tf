resource "google_compute_network" "demo-vpc-child-2" {
    name = var.vpc2-name
    auto_create_subnetworks = false
  
}

resource "google_compute_subnetwork" "demo-subnet-child-2" {
    name = var.subnet2-name
    network = google_compute_network.demo-vpc-child-2.name
    ip_cidr_range = var.subnet2-ip-cidr-range
    
  
}

resource "google_compute_instance" "demo-vm-module-2" {
    name = "vpc2-vm"
    machine_type = "e2-standard-4"
    allow_stopping_for_update = true

    

    network_interface {
      network = var.vpc2-name
      subnetwork = var.subnet2-name
      

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

    metadata = {
      serial-port-enable = true
    }
  

}