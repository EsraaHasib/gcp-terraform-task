##### SUBNETS ###
resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = var.ip_cidr_range
  region        = "europe-west-1"
  network       = google_compute_network.vpc.id
}

######### Subnet 2 #######
resource "google_compute_subnetwork" "subnet2" {
  name          = "subnet2"
  ip_cidr_range = var.ip_cidr_range
  region        = "us-central1"
  network       = google_compute_network.vpc.id
}