module "hcloud_network" {
  source = ".."

  name     = "example_network"
  ip_range = "10.0.0.0/16"
}
