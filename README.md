# _Hetzner Cloud_ - Private Network <img src="https://avatars.githubusercontent.com/u/30047064?s=200&v=4" alt="Hetzner Logo" align="right" width="128"/> <img src="https://raw.githubusercontent.com/fmjstudios/artwork/refs/heads/main/projects/terraform/icon/color/terraform-icon-color.png" alt="Terraform Logo" align="right" width="128"/>

A [Terraform module][module] to create and manage secure private networks within [Hetzner Cloud][hetzner].

## ✨ TL;DR

```shell
module "hetzner_server_apache" {
  source = "terraform-hetzner-modules/cloud/private-network"
  ...
}
```

<!-- BEGIN_TF_DOCS -->

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_hcloud"></a> [hcloud](#provider_hcloud) | ~> 1.49 |

## Modules

No modules.

## Inputs

| Name                                                                                                      | Description                                                                                                                            | Type          | Default        | Required |
| --------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | ------------- | -------------- | :------: |
| <a name="input_delete_protection"></a> [delete_protection](#input_delete_protection)                      | Whether or not to enable Hetzner's delete protection. By default it is 'false'.                                                        | `bool`        | `false`        |    no    |
| <a name="input_expose_routes_to_vswitch"></a> [expose_routes_to_vswitch](#input_expose_routes_to_vswitch) | Whether or not to expose the routes within the private network to vSwitches on dedicated Hetzner machines. By default this is 'false'. | `bool`        | `false`        |    no    |
| <a name="input_ip_range"></a> [ip_range](#input_ip_range)                                                 | The IP range to give to the new network. By default it's 10.0.0.0/8 meaning the entire private network ip range.                       | `string`      | `"10.0.0.0/8"` |    no    |
| <a name="input_labels"></a> [labels](#input_labels)                                                       | Labels to attach to the new network.                                                                                                   | `map(string)` | `{}`           |    no    |
| <a name="input_location"></a> [location](#input_location)                                                 | The datacenter location to create the new network in. Can be one of the following: nbg1, fsn1, hel1, ash or hil. Default is 'fsn1'.    | `string`      | `"fsn1"`       |    no    |
| <a name="input_name"></a> [name](#input_name)                                                             | The name to give to the new private network. Must be unique per Hetzner project.                                                       | `string`      | n/a            |   yes    |
| <a name="input_routes"></a> [routes](#input_routes)                                                       | The network routes to create for the new network. By default none are created.                                                         | `any`         | `{}`           |    no    |
| <a name="input_subnets"></a> [subnets](#input_subnets)                                                    | The subnets to create for the network. By default none are created.                                                                    | `any`         | `{}`           |    no    |

## Outputs

| Name                                                                                                        | Description                                                                                          |
| ----------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| <a name="output_delete_protection"></a> [delete_protection](#output_delete_protection)                      | Whether or not deletion protection is enabled for the Hetzner Cloud network.                         |
| <a name="output_expose_routes_to_vswitch"></a> [expose_routes_to_vswitch](#output_expose_routes_to_vswitch) | Whether or not the Hetzner Cloud network is set to expose network routes to a Hetzner Robot vSwitch. |
| <a name="output_id"></a> [id](#output_id)                                                                   | The unique ID for the new Hetzner Cloud network.                                                     |
| <a name="output_ip_range"></a> [ip_range](#output_ip_range)                                                 | The IP range for the new Hetzner Cloud network.                                                      |
| <a name="output_labels"></a> [labels](#output_labels)                                                       | The labels attached to the new Hetzner Cloud network.                                                |
| <a name="output_name"></a> [name](#output_name)                                                             | The name for the new Hetzner Cloud networks.                                                         |
| <a name="output_route_destinations"></a> [route_destinations](#output_route_destinations)                   | The destinations for the network routes within the new Hetzner Cloud network.                        |
| <a name="output_route_gateways"></a> [route_gateways](#output_route_gateways)                               | The gateways for the network routes within the new Hetzner Cloud network.                            |
| <a name="output_route_ids"></a> [route_ids](#output_route_ids)                                              | The unique IDs for the network routes within the new Hetzner Cloud network.                          |
| <a name="output_subnet_ids"></a> [subnet_ids](#output_subnet_ids)                                           | The unique ID for the subnet attached to the new Hetzner Cloud network.                              |
| <a name="output_subnet_ip_ranges"></a> [subnet_ip_ranges](#output_subnet_ip_ranges)                         | The IP ranges of the subnets attached to the new Hetzner Cloud network.                              |
| <a name="output_subnet_types"></a> [subnet_types](#output_subnet_types)                                     | The type of subnets attached to the new Hetzner Cloud network.                                       |
| <a name="output_subnet_vswitch_ids"></a> [subnet_vswitch_ids](#output_subnet_vswitch_ids)                   | The vSwitch IDs of the subnets attached to the new Hetzner Cloud network.                            |

<!-- END_TF_DOCS -->

### 🔃 Contributing

Refer to our [documentation for contributors][contributing] for contributing guidelines, commit message
formats and versioning tips.

### 📥 Maintainers

This project is owned and maintained by [FMJ Studios][org] refer to the [`AUTHORS`][authors] or [`CODEOWNERS`][owners]
for more information. You may also use the linked contact details to reach out directly.

### ©️ Copyright

- _Assets provided by:_ **[HashiCorp][hashicorp]**
- _Sources provided by:_ **[FMJ Studios][org]** under the **[MIT License][license]**

<!-- INTERNAL REFERENCES -->

<!-- Project references -->

<!-- File references -->

[license]: LICENSE
[contributing]: docs/CONTRIBUTING.md
[authors]: .github/AUTHORS
[owners]: .github/CODEOWNERS

<!-- General links -->

[org]: https://github.com/fmjstudios
[hashicorp]: https://www.hashicorp.com/
[hetzner]: https://hetzner.com

<!-- Third-party -->

[module]: https://registry.terraform.io/modules/terraform-hetzner-modules/compute/server/latest
