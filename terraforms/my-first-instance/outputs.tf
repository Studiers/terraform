output "external_ip" {
  description = "Show ip"
  value       = "${google_compute_instance.my-instance.network_interface.0.access_config.0.assigned_nat_ip}"
}
