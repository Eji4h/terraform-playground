resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  zone         = "asia-southeast1-b"
  machine_type = "f1-micro"
  tags         = ["ssh", "http"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      size  = 20
    }
  }

  network_interface {
    network    = google_compute_network.terraform_network.name
    subnetwork = google_compute_subnetwork.terraform_subnet_a.name
    access_config {
      network_tier = "PREMIUM"
    }
  }
}