output "cluster_name" {
  description = "GKE cluster name"
  value       = google_container_cluster.this.name
}

output "cluster_location" {
  description = "GKE cluster location (zone)"
  value       = google_container_cluster.this.location
}

output "cluster_endpoint" {
  description = "Kubernetes API endpoint"
  value       = google_container_cluster.this.endpoint
}

output "node_pool_name" {
  description = "Node pool name"
  value       = google_container_node_pool.nodes.name
}

output "project_id" {
  description = "GCP project ID"
  value       = var.project_id
}
