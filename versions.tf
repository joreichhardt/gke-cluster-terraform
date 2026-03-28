terraform {
  backend "gcs" {
    bucket = "project-84ddd43d-e408-4cb9-8cb-k3s-tf-state"
    prefix = "gke/demo"
  }
}
