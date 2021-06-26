resource "google_compute_network" "terraform_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "terraform_subnet_a" {
  name          = "terraform-subnet-a"
  ip_cidr_range = "172.168.1.0/24"
  region        = "asia-southeast1"
  network       = google_compute_network.terraform_network.id
}
