<!-- BEGIN_TF_DOCS -->

# Simple VPC Module

#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | = 0.13.7 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 4.27.0 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider_aws) | ~> 4.27.0 |
| <a name="provider_time"></a> [time](#provider_time) | n/a |

#### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_FIREWALL-VPC"></a> [FIREWALL-VPC](#module_FIREWALL-VPC) | ../../modules/aws-vpc-mod | n/a |
| <a name="module_Firewall-management-subnets"></a> [Firewall-management-subnets](#module_Firewall-management-subnets) | ../../modules/aws-vpc-subnet-mod | n/a |
| <a name="module_Firewall-private-subnets"></a> [Firewall-private-subnets](#module_Firewall-private-subnets) | ../../modules/aws-vpc-subnet-mod | n/a |
| <a name="module_Firewall-public-subnets"></a> [Firewall-public-subnets](#module_Firewall-public-subnets) | ../../modules/aws-vpc-subnet-mod | n/a |
| <a name="module_GatwayLB"></a> [GatwayLB](#module_GatwayLB) | ../../modules/aws-elastic-load-balancer-mod | n/a |
| <a name="module_IGW-Edge"></a> [IGW-Edge](#module_IGW-Edge) | ../../modules/aws-route-table-mod | n/a |
| <a name="module_IGW-Edge-associate"></a> [IGW-Edge-associate](#module_IGW-Edge-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_Internet-GTW"></a> [Internet-GTW](#module_Internet-GTW) | ../../modules/aws-internet-gateway-mod | n/a |
| <a name="module_Mgt-subnet-2a-routetable"></a> [Mgt-subnet-2a-routetable](#module_Mgt-subnet-2a-routetable) | ../../modules/aws-route-table-mod | n/a |
| <a name="module_Mgt-subnet-2a-routetable-associate"></a> [Mgt-subnet-2a-routetable-associate](#module_Mgt-subnet-2a-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_Mgt-subnet-2b-routetable"></a> [Mgt-subnet-2b-routetable](#module_Mgt-subnet-2b-routetable) | ../../modules/aws-route-table-mod | n/a |
| <a name="module_Mgt-subnet-2b-routetable-associate"></a> [Mgt-subnet-2b-routetable-associate](#module_Mgt-subnet-2b-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_Mgt-subnet-2c-routetable"></a> [Mgt-subnet-2c-routetable](#module_Mgt-subnet-2c-routetable) | ../../modules/aws-route-table-mod | n/a |
| <a name="module_Mgt-subnet-2c-routetable-associate"></a> [Mgt-subnet-2c-routetable-associate](#module_Mgt-subnet-2c-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_NAT-GTW-2a"></a> [NAT-GTW-2a](#module_NAT-GTW-2a) | ../../modules/aws-nat-gateway-mod | n/a |
| <a name="module_NAT-GTW-2a-EIP"></a> [NAT-GTW-2a-EIP](#module_NAT-GTW-2a-EIP) | ../../modules/aws-elastic-ip-mod | n/a |
| <a name="module_NAT-GTW-2b"></a> [NAT-GTW-2b](#module_NAT-GTW-2b) | ../../modules/aws-nat-gateway-mod | n/a |
| <a name="module_NAT-GTW-2b-EIP"></a> [NAT-GTW-2b-EIP](#module_NAT-GTW-2b-EIP) | ../../modules/aws-elastic-ip-mod | n/a |
| <a name="module_NAT-GTW-2c"></a> [NAT-GTW-2c](#module_NAT-GTW-2c) | ../../modules/aws-nat-gateway-mod | n/a |
| <a name="module_NAT-GTW-2c-EIP"></a> [NAT-GTW-2c-EIP](#module_NAT-GTW-2c-EIP) | ../../modules/aws-elastic-ip-mod | n/a |
| <a name="module_Pfsense-az2a-EIP"></a> [Pfsense-az2a-EIP](#module_Pfsense-az2a-EIP) | ../../modules/aws-elastic-ip-mod | n/a |
| <a name="module_Private-Route-Table-2a"></a> [Private-Route-Table-2a](#module_Private-Route-Table-2a) | ../../modules/aws-route-table-mod | n/a |
| <a name="module_Private-Route-Table-2b"></a> [Private-Route-Table-2b](#module_Private-Route-Table-2b) | ../../modules/aws-route-table-mod | n/a |
| <a name="module_Private-Route-Table-2c"></a> [Private-Route-Table-2c](#module_Private-Route-Table-2c) | ../../modules/aws-route-table-mod | n/a |
| <a name="module_Private-subnet-2a-routetable-associate"></a> [Private-subnet-2a-routetable-associate](#module_Private-subnet-2a-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_Private-subnet-2b-routetable-associate"></a> [Private-subnet-2b-routetable-associate](#module_Private-subnet-2b-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_Private-subnet-2c-routetable-associate"></a> [Private-subnet-2c-routetable-associate](#module_Private-subnet-2c-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_Public-Route-Table"></a> [Public-Route-Table](#module_Public-Route-Table) | ../../modules/aws-route-table-mod | n/a |
| <a name="module_aws-utils"></a> [aws-utils](#module_aws-utils) | git::https://github.com/Bao-Truong/terraform-aws-output-util | master |
| <a name="module_pfsense-az2a"></a> [pfsense-az2a](#module_pfsense-az2a) | ../../modules/aws-ec2-instance-mod | n/a |
| <a name="module_pfsense-az2b"></a> [pfsense-az2b](#module_pfsense-az2b) | ../../modules/aws-ec2-instance-mod | n/a |
| <a name="module_pfsense-az2c"></a> [pfsense-az2c](#module_pfsense-az2c) | ../../modules/aws-ec2-instance-mod | n/a |
| <a name="module_private-az2a"></a> [private-az2a](#module_private-az2a) | ../../modules/aws-ec2-instance-mod | n/a |
| <a name="module_private-az2b"></a> [private-az2b](#module_private-az2b) | ../../modules/aws-ec2-instance-mod | n/a |
| <a name="module_private-az2c"></a> [private-az2c](#module_private-az2c) | ../../modules/aws-ec2-instance-mod | n/a |
| <a name="module_public-az2a"></a> [public-az2a](#module_public-az2a) | ../../modules/aws-ec2-instance-mod | n/a |
| <a name="module_public-subnet-2a-routetable-associate"></a> [public-subnet-2a-routetable-associate](#module_public-subnet-2a-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_public-subnet-2b-routetable-associate"></a> [public-subnet-2b-routetable-associate](#module_public-subnet-2b-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |
| <a name="module_public-subnet-2c-routetable-associate"></a> [public-subnet-2c-routetable-associate](#module_public-subnet-2c-routetable-associate) | ../../modules/aws-route-table-associate-mod | n/a |

#### Resources

| Name | Type |
|------|------|
| [aws_network_interface.Pfsense-LAN-az2a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface) | resource |
| [aws_network_interface.Pfsense-LAN-az2b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface) | resource |
| [aws_network_interface.Pfsense-LAN-az2c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface) | resource |
| [aws_network_interface_attachment.pfsense-az2a-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface_attachment) | resource |
| [aws_network_interface_attachment.pfsense-az2b-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface_attachment) | resource |
| [aws_network_interface_attachment.pfsense-az2c-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface_attachment) | resource |
| [aws_security_group.Allow-LAN-traffic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.Pfsense-SG](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.Private-SG](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.public-SG](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [time_static.current_date](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azs"></a> [azs](#input_azs) | # SUBNETS | `list(string)` | n/a | yes |
| <a name="input_cidr"></a> [cidr](#input_cidr) | n/a | `string` | n/a | yes |
| <a name="input_create_flow_log_cloudwatch_iam_role"></a> [create_flow_log_cloudwatch_iam_role](#input_create_flow_log_cloudwatch_iam_role) | n/a | `bool` | n/a | yes |
| <a name="input_create_flow_log_cloudwatch_log_group"></a> [create_flow_log_cloudwatch_log_group](#input_create_flow_log_cloudwatch_log_group) | n/a | `bool` | n/a | yes |
| <a name="input_enable_dns_hostnames"></a> [enable_dns_hostnames](#input_enable_dns_hostnames) | n/a | `bool` | n/a | yes |
| <a name="input_enable_dns_support"></a> [enable_dns_support](#input_enable_dns_support) | n/a | `bool` | n/a | yes |
| <a name="input_enable_flow_log"></a> [enable_flow_log](#input_enable_flow_log) | n/a | `bool` | n/a | yes |
| <a name="input_enable_ipv6"></a> [enable_ipv6](#input_enable_ipv6) | n/a | `bool` | n/a | yes |
| <a name="input_flow_log_cloudwatch_log_group_name_prefix"></a> [flow_log_cloudwatch_log_group_name_prefix](#input_flow_log_cloudwatch_log_group_name_prefix) | n/a | `string` | n/a | yes |
| <a name="input_gtw_descriptive_name_2a"></a> [gtw_descriptive_name_2a](#input_gtw_descriptive_name_2a) | # GATEWAYS | `string` | n/a | yes |
| <a name="input_gtw_descriptive_name_2b"></a> [gtw_descriptive_name_2b](#input_gtw_descriptive_name_2b) | n/a | `string` | n/a | yes |
| <a name="input_gtw_descriptive_name_2c"></a> [gtw_descriptive_name_2c](#input_gtw_descriptive_name_2c) | n/a | `string` | n/a | yes |
| <a name="input_gtw_descriptive_name_edge"></a> [gtw_descriptive_name_edge](#input_gtw_descriptive_name_edge) | n/a | `string` | n/a | yes |
| <a name="input_key_name"></a> [key_name](#input_key_name) | ###### EC2 | `string` | n/a | yes |
| <a name="input_mgt_map_public_ip_on_launch"></a> [mgt_map_public_ip_on_launch](#input_mgt_map_public_ip_on_launch) | n/a | `bool` | n/a | yes |
| <a name="input_mgt_subnet_suffix"></a> [mgt_subnet_suffix](#input_mgt_subnet_suffix) | n/a | `string` | n/a | yes |
| <a name="input_mgt_subnets"></a> [mgt_subnets](#input_mgt_subnets) | n/a | `list(string)` | n/a | yes |
| <a name="input_private_map_public_ip_on_launch"></a> [private_map_public_ip_on_launch](#input_private_map_public_ip_on_launch) | n/a | `bool` | n/a | yes |
| <a name="input_private_subnet_suffix"></a> [private_subnet_suffix](#input_private_subnet_suffix) | n/a | `string` | n/a | yes |
| <a name="input_private_subnets"></a> [private_subnets](#input_private_subnets) | n/a | `list(string)` | n/a | yes |
| <a name="input_pubclic_map_public_ip_on_launch"></a> [pubclic_map_public_ip_on_launch](#input_pubclic_map_public_ip_on_launch) | n/a | `bool` | n/a | yes |
| <a name="input_pubclic_subnet_suffix"></a> [pubclic_subnet_suffix](#input_pubclic_subnet_suffix) | n/a | `string` | n/a | yes |
| <a name="input_pubclic_subnets"></a> [pubclic_subnets](#input_pubclic_subnets) | n/a | `list(string)` | n/a | yes |
| <a name="input_rt_descriptive_name_2a"></a> [rt_descriptive_name_2a](#input_rt_descriptive_name_2a) | # ROUTETABLES | `string` | n/a | yes |
| <a name="input_rt_descriptive_name_2b"></a> [rt_descriptive_name_2b](#input_rt_descriptive_name_2b) | n/a | `string` | n/a | yes |
| <a name="input_rt_descriptive_name_2c"></a> [rt_descriptive_name_2c](#input_rt_descriptive_name_2c) | n/a | `string` | n/a | yes |
| <a name="input_rt_descriptive_name_edge"></a> [rt_descriptive_name_edge](#input_rt_descriptive_name_edge) | n/a | `string` | n/a | yes |
| <a name="input_rt_descriptive_name_private_2a"></a> [rt_descriptive_name_private_2a](#input_rt_descriptive_name_private_2a) | n/a | `string` | n/a | yes |
| <a name="input_rt_descriptive_name_private_2b"></a> [rt_descriptive_name_private_2b](#input_rt_descriptive_name_private_2b) | n/a | `string` | n/a | yes |
| <a name="input_rt_descriptive_name_private_2c"></a> [rt_descriptive_name_private_2c](#input_rt_descriptive_name_private_2c) | n/a | `string` | n/a | yes |
| <a name="input_rt_descriptive_name_public"></a> [rt_descriptive_name_public](#input_rt_descriptive_name_public) | n/a | `string` | n/a | yes |
| <a name="input_vpc_descriptive_name"></a> [vpc_descriptive_name](#input_vpc_descriptive_name) | # VPC | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input_prefix) | n/a | `string` | `"int"` | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_management_subnets"></a> [management_subnets](#output_management_subnets) | n/a |
| <a name="output_private_subnets"></a> [private_subnets](#output_private_subnets) | n/a |
| <a name="output_public_subnets"></a> [public_subnets](#output_public_subnets) | n/a |

<br/>

<!-- END_TF_DOCS -->