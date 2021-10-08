provider "google" {
    #credentials = file("./key.json")
    access_token = var.access_token
    project = "tokyo-nomad-323506"

}

resource "google_compute_network" "vpc_network2" {
  project                 = "tokyo-nomad-323506"
  name                    = "vpc-network2"
  auto_create_subnetworks = true
  mtu                     = 1460
}
