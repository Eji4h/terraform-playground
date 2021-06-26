resource "google_compute_firewall" "terraform_fw_ssh" {
  name    = "terraform-fw-ssh"
  network = google_compute_network.terraform_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges  = ["0.0.0.0/0"]
  target_tags = ["ssh"]
}

resource "google_compute_firewall" "terraform_fw_http" {
  name    = "terraform-fw-http"
  network = google_compute_network.terraform_network.name

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }
  source_ranges  = ["0.0.0.0/0"]
  target_tags = ["http"]
}
