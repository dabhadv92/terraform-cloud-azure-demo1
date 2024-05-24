
##Variables for VPC-1
variable "vpc-name" {
  type = string
  default = "myvpc-child"
  
}
variable "subnet_name" {
  type = string
  default = "mysubnet-child"
  
}
variable "ip_cidr_range" {
  type = string
  default = "192.168.10.0/24"
  
}

##Variables for Storage Bucket
variable "storage-bucket-name" {
  type = string
  #default = "static-website-1995"
  
}

variable "storage-bucket-location" {
  type = string
  #default = "asia-south1"
  
}

variable "storage-bucket-object-1-name" {
  type = string
  #default = "object-1"
  
  
}
  
variable "storage-bucket-object-2-name" {
  type = string
  #default = "object-2"
}


##Variables for VPC-2
variable "vpc2-name" {
  type = string 
}

variable "subnet2-name" {
  type = string
  
}

variable "subnet2-ip-cidr-range" {
  type = string
}