output "vpc-name" {
  value = google_compute_network.demo-vpc-child.name
}

output "subnet-name" {
    value = google_compute_subnetwork.demo-subnet-child.name
  
}

output "subnet-cidr-range" {
  value = google_compute_subnetwork.demo-subnet-child.ip_cidr_range
}