resource "google_compute_network" "demo-vpc-child" {
    name = var.vpc-name
    auto_create_subnetworks = false
  
}

resource "google_compute_subnetwork" "demo-subnet-child" {
    name = var.subnet-name
    network = google_compute_network.demo-vpc-child.name
    ip_cidr_range = var.subnet-ip-cidr-range
    
  
}