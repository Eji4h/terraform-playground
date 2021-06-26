resource "google_storage_bucket" "sync_terraform" {
  name          = "sync-terraform"
  location      = "ASIA-SOUTHEAST1"
  storage_class = "standard"
  force_destroy = true
  uniform_bucket_level_access = true
}