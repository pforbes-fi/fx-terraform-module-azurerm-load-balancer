# terraform-module-azurerm-load-balancer

## Usage
See `examples` folders for usage of this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| azurerm | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enabled | Enable or disable module | `bool` | `true` | no |
| lb\_backend\_pool\_enabled | Boolean flag which describes whethere the Load balncer Backend pool is enabled or not. | `bool` | `false` | no |
| lb\_backend\_pool\_ids | List of backend pool ids to which the Load Balancer rule operates. Changing this will force to create new resource. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_backend\_pool\_names | List of names of the backend pools which will be created | `list(string)` | `[]` | no |
| lb\_frontend\_ip\_configurations | One or more frontend IP configurations block. chaning this block will force to create new frontend IP configuration block to the Load Balancer. | `list(object({ name = string, subnet_id = string, private_ip_address = string, public_ip_address_id = string }))` | n/a | yes |
| lb\_nat\_pool\_backend\_ports | List of back end ports for the NAT pool. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_pool\_enabled | Boolean flag to enable nat pool | `bool` | `false` | no |
| lb\_nat\_pool\_frontend\_ip\_configuration\_names | List of frotend IP configuration names to which the nat pool will be associated. Changing this will force to create new resource. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_pool\_frontend\_port\_ends | List of the frontend port end for NAT pool. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_pool\_frontend\_port\_starts | List of frontend port start for NAT pool. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_pool\_names | List of nat pool names for nat pool. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_pool\_protocols | List of nat pool protocols. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_rule\_backend\_ports | List of backend port which will be associated to the backend ports. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_rule\_enabled | Boolean flag which describes whether or not to enable the nat rules. | `bool` | `false` | no |
| lb\_nat\_rule\_frontend\_ip\_configuration\_names | List of frontend IP configuration names to which nat rule will be associated. Changing tis will force to create new resource. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_rule\_frontend\_ports | List of frontend port which will be associated to the rules. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_rule\_names | List of names for the NAT rules. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_nat\_rule\_protocols | List of NAT protocols which are associated to the rules. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_probe\_ids | List of probe ids to which the Load Balancer rule is attached. Changing this will force to create new resource. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_probe\_interval\_in\_seconds | List of intervals, in seconds between probes to the backend endpoint for health status. | `list(number)` | <pre>[<br>  5<br>]</pre> | no |
| lb\_probe\_names | List of Load Balncer probe names that will be created. changing this will force to create new resource. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_probe\_ports | List of ports on which the probe will queries the backend endpoint. possible values range from 1 to 65535, inclusive. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_probe\_protocols | List of protocol of the end point. possible values are `Http`, `Https` or `Tcp`. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_probe\_request\_paths | List of URI used for requesting health status from the backend endpoint required if protocol is set to Http. Otherwise, it is not allowed. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_rule\_backend\_ports | List of port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_rule\_enable\_floating\_ip | Enables the Floating IP Capacity, required to configure a SQL AlwaysOn Availability Group. | `bool` | `false` | no |
| lb\_rule\_frontend\_ip\_configuration\_names | List of frontend ip configuration name to whcih the Load Balancer rule will be associated. Changing this will force to create new rule. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_rule\_frontend\_ports | List of port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_rule\_idle\_timeout\_in\_minutes | List of timeouts for the TCP idle connection. | `list(number)` | <pre>[<br>  5<br>]</pre> | no |
| lb\_rule\_load\_distributions | List which specifies the load balancing distribution type to be used by the Load Balancer. Possible values are: `Default` – The load balancer is configured to use a 5 tuple hash to map traffic to available servers. `SourceIP` – The load balancer is configured to use a 2 tuple hash to map traffic to available servers. `SourceIPProtocol` – The load balancer is configured to use a 3 tuple hash to map traffic to available servers. Also known as Session Persistence, where the options are called `None`, `Client IP` and `Client IP and Protocol` respectively. | `list(string)` | <pre>[<br>  "Default"<br>]</pre> | no |
| lb\_rule\_names | List of loadbalncer rule names that will be created. changing this will force to create new resource. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_rule\_protocols | List of transport protocol for the external endpoint possible values are Udp, Tcp or All.changing this will force to create new resource. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| lb\_sku | The SKU of the Load Balancer. | `string` | `"Basic"` | no |
| load\_balancer\_tags | Tags to add to the Load Balancer | `map` | `{}` | no |
| loadbalancer\_name | Specifies the name of the Load Balancer. | `string` | n/a | yes |
| location | Location of the Load Balancer | `string` | n/a | yes |
| public\_ip\_methods | the allocation method for this ip address possible values are `Static` or `Dynamic`. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| public\_ip\_names | Names of the Public IP resource | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| public\_ip\_skus | The sku of the public ip, accepted values are `Basic` and `Standard` defaults to `Basic` | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| resource\_group\_name | Name of the resource group where to create the Load Balancers. | `string` | n/a | yes |
| tags | Tags shared by all resources of this module. Will be merged with any other specific tags by resource | `map` | `{}` | no |
| type | Define if the Load Balancer is private or public. | `string` | `"public"` | no |

## Outputs

| Name | Description |
|------|-------------|
| lb\_backend\_pool\_ids | The IDs of the backend address pools. |
| lb\_backend\_pool\_ids\_map | Map with names and IDs of created backend pools. |
| lb\_frontend\_ip\_configuartion\_addresses | The list of private ip address assigned to the load balancer in `frontend_ip_configuration blocks`, if any. |
| lb\_ids | The IDs of the Load Balancers |
| lb\_nat\_pool\_ids | The IDs of the Load Balncer NAT pools. |
| lb\_nat\_rule\_ids | The IDs of the Load Balncer NAT rules. |
| lb\_probe\_ids | the IDs of the Load Balncer probes. |
| lb\_rule\_ids | The IDs of the Load Balancer Rules. |
| public\_ip\_ids | The IDs for the public\_ip resource |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
