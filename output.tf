

output "child-vpc-name" {
    value = google_compute_network.demo-vpc-child.name
  
}

output "child-subnet_name" {
    value = google_compute_subnetwork.demo-subnet-child.name
  
}

output "child-ip_cidr_range" {
    value = google_compute_subnetwork.demo-subnet-child.ip_cidr_range
  
}

output "child-storage-bucket-name" {
    value = google_storage_bucket.gcp-bucket.name
  
}

output "child-storage-bucket-location" {
    value = google_storage_bucket.gcp-bucket.location
  
}

output "child-storage-bucket-object-1-name" {
    value = google_storage_bucket_object.object-sunday.name
  
}

output "child-storage-bucket-object-2-name" {
    value = google_storage_bucket_object.object-2.name
    
  
}




output "child-vpc2-name" {
    value = google_compute_network.demo-vpc-child-2.name
  
}

output "child-subnet2-name" {
    value = google_compute_subnetwork.demo-subnet-child-2.name
  
}


