provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "demo" {
  name     = "demo-cluster"
  location = var.region
  initial_node_count = 1

  node_config {
    machine_type = "e2-medium"
  }
}
