resource "google_container_cluster" "this" {
  name     = var.cluster_name
  location = var.zone

  remove_default_node_pool = true
  initial_node_count       = 1

  deletion_protection = false

  networking_mode = "VPC_NATIVE"

  release_channel {
    channel = "REGULAR"
  }
}

resource "google_container_node_pool" "nodes" {
  name     = "${var.cluster_name}-pool"
  location = var.zone
  cluster  = google_container_cluster.this.name

  node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    disk_size_gb = 20

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    labels = {
      project = "gke-demo"
    }
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
}
