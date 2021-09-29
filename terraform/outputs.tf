output "external_ip_address_app" {
  value = yandex_compute_instance.app-terraform[0].network_interface[0].nat_ip_address
}
output "external_lb_ip_address_app" {
  value = tolist(tolist(yandex_lb_network_load_balancer.app_lb.listener)[0].external_address_spec)[0].address
}

output "external_port_app" {
  value = var.external_app_port
}
output "target_group" {
  value = yandex_lb_target_group.app_target_group.name
}