terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.73.0"
    }
  }
  backend "gcs" {
    bucket      = "sync-terraform"
    prefix      = "terraform/state"
    credentials = "../terraform-service-account.json"
  }
}

provider "google" {
  # Configuration options
  project     = "terraform-295220"
  region      = "asia-southeast1"
  zone        = "asia-southeast1-b"
  credentials = file("../terraform-service-account.json")
}
