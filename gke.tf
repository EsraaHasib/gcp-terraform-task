
resource "google_container_cluster" "cluster1" {
  name               = "cluster1"
  location           = "europe-west-1"
  initial_node_count = 3
  network = google_compute_network.vpc.id
  node_config {
    machine_type = "e2.micro"
    image_type = "ubuntu"
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
}
