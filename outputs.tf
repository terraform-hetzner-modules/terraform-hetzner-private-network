output "id" {
  value       = hcloud_network.current.id
  description = "The unique ID for the new Hetzner Cloud network."
}

output "name" {
  value       = hcloud_network.current.name
  description = "The name for the new Hetzner Cloud networks."
}

output "ip_range" {
  value       = hcloud_network.current.ip_range
  description = "The IP range for the new Hetzner Cloud network."
}

output "labels" {
  value       = hcloud_network.current.labels
  description = "The labels attached to the new Hetzner Cloud network."
}

output "delete_protection" {
  value       = hcloud_network.current.delete_protection
  description = "Whether or not deletion protection is enabled for the Hetzner Cloud network."
}

output "expose_routes_to_vswitch" {
  value       = hcloud_network.current.expose_routes_to_vswitch
  description = "Whether or not the Hetzner Cloud network is set to expose network routes to a Hetzner Robot vSwitch."
}

output "subnet_ids" {
  value = {
    for k, v in hcloud_network_subnet.current : k => v.id
  }
  description = "The unique ID for the subnet attached to the new Hetzner Cloud network."
}

output "subnet_types" {
  value = {
    for k, v in hcloud_network_subnet.current : k => v.type
  }
  description = "The type of subnets attached to the new Hetzner Cloud network."
}

output "subnet_ip_ranges" {
  value = {
    for k, v in hcloud_network_subnet.current : k => v.ip_range
  }
  description = "The IP ranges of the subnets attached to the new Hetzner Cloud network."
}

output "subnet_vswitch_ids" {
  value = {
    for k, v in hcloud_network_subnet.current : k => v.vswitch_id
  }
  description = "The vSwitch IDs of the subnets attached to the new Hetzner Cloud network."
}

output "route_ids" {
  value = {
    for k, v in hcloud_network_route.current : k => v.id
  }
  description = "The unique IDs for the network routes within the new Hetzner Cloud network."
}

output "route_destinations" {
  value = {
    for k, v in hcloud_network_route.current : k => v.destination
  }
  description = "The destinations for the network routes within the new Hetzner Cloud network."
}

output "route_gateways" {
  value = {
    for k, v in hcloud_network_route.current : k => v.gateway
  }
  description = "The gateways for the network routes within the new Hetzner Cloud network."
}
