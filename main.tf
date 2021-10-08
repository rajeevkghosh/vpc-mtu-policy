provider "google" {
    credentials = file("./key.json")

}

resource "google_compute_network" "vpc_network" {
  project                 = "tokyo-nomad-323506"
  name                    = "vpc-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}
