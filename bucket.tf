resource "google_storage_bucket" "bucket1" {
  name          = "my-bucket"
  location      = "europe-wert-1"
  force_destroy = true
  uniform_bucket_level_access = true
}