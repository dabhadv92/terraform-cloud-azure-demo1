

resource "google_storage_bucket" "gcp-bucket" {
  name          = var.storage-bucket-name
  location      = var.storage-bucket-location
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600

    
  }
}

resource "google_storage_bucket_object" "object-sunday" {
    name = var.storage-bucket-object-1-name
    bucket = google_storage_bucket.gcp-bucket.name
    content = "Ganpati Bappa Morya"
    
}

resource "google_storage_bucket_object" "object-2" {
    name = var.storage-bucket-object-2-name
    bucket = google_storage_bucket.gcp-bucket.name
    content = "Jay Shri Ram"
    
}

resource "google_storage_bucket_iam_member" "storage-iam-member" {
  bucket = google_storage_bucket.gcp-bucket.name
  role = "roles/storage.admin"
  member = "allUsers"

  
}