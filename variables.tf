variable "name" {
  type        = string
  description = "The name to give to the new private network. Must be unique per Hetzner project."
}

variable "ip_range" {
  type        = string
  description = "The IP range to give to the new network. By default it's 10.0.0.0/8 meaning the entire private network ip range."
  default     = "10.0.0.0/8"
}

variable "labels" {
  type        = map(string)
  description = "Labels to attach to the new network."
  default     = {}
}

variable "delete_protection" {
  type        = bool
  description = "Whether or not to enable Hetzner's delete protection. By default it is 'false'."
  default     = false
}

variable "expose_routes_to_vswitch" {
  type        = bool
  description = "Whether or not to expose the routes within the private network to vSwitches on dedicated Hetzner machines. By default this is 'false'."
  default     = false
}


# -------------------------------------
# Custom Variables
# -------------------------------------

variable "location" {
  type        = string
  description = "The datacenter location to create the new network in. Can be one of the following: nbg1, fsn1, hel1, ash or hil. Default is 'fsn1'."
  default     = "fsn1"
}

variable "subnets" {
  type        = any
  description = "The subnets to create for the network. By default none are created."
  default     = {}
}

variable "routes" {
  type        = any
  description = "The network routes to create for the new network. By default none are created."
  default     = {}
}
