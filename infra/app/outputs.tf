output "frontend_url" {
  description = "URL to site. Load balancer expected to take ~5 minutes for it to warm up."
  value       = data.http.load_balancer_warm_up.url
}

output "run_service_name" {
  description = "The name of the deployed Cloud Run service."
  value       = google_cloud_run_v2_service.default.name
}
