module "hcloud_network" {
  source = ".."

  name     = "example_network"
  ip_range = "10.0.0.0/16"

  subnets = {
    net1 = {
      ip_range = "10.0.0.0/24"
      type     = "cloud"
    }
    net2 = {
      ip_range = "10.0.1.0/24"
      type     = "cloud"
    }
  }

  routes = {
    route1 = {
      destination = "0.0.0.0/0"
      gateway     = "10.0.0.2"
    }
  }
}
