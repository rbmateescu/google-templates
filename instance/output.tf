
output "Name" {
  value = "${module.tangerine_instance.google_compute_instance.default.name}"
}

output "External_IP" {
  value = "${module.tangerine_instance.google_compute_instance.default.network_interface.0.access_config.0.assigned_nat_ip}"
}

output "Internal_IP" {
  value = "${module.tangerine_instance.google_compute_instance.default.network_interface.0.address}"
}