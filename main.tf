
data "hcloud_location" "current_location" {
  name = var.location
}


resource "hcloud_network" "current" {
  name     = var.name
  ip_range = var.ip_range

  labels = var.labels

  delete_protection        = var.delete_protection
  expose_routes_to_vswitch = var.expose_routes_to_vswitch
}

resource "hcloud_network_subnet" "current" {
  for_each = var.subnets

  network_id = hcloud_network.current.id

  type         = each.value["type"]
  ip_range     = each.value["ip_range"]
  network_zone = data.hcloud_location.current_location.network_zone
}


resource "hcloud_network_route" "current" {
  for_each = var.routes

  network_id = hcloud_network.current.id

  destination = each.value["destination"]
  gateway     = each.value["gateway"]
}
