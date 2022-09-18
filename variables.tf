variable "prefix" {
  type    = string
  default = "int"
}
## VPC
variable "vpc_descriptive_name" {
  type = string

}
variable "cidr" {
  type = string

}
variable "flow_log_cloudwatch_log_group_name_prefix" {
  type = string

}
variable "enable_ipv6" {
  type = bool

}
variable "enable_dns_hostnames" {
  type = bool

}
variable "enable_dns_support" {
  type = bool

}
variable "enable_flow_log" {
  type = bool

}
variable "create_flow_log_cloudwatch_iam_role" {
  type = bool

}
variable "create_flow_log_cloudwatch_log_group" {
  type = bool

}


## GATEWAYS
variable "gtw_descriptive_name_2a" {
  type = string

}
variable "gtw_descriptive_name_2b" {
  type = string

}
variable "gtw_descriptive_name_2c" {
  type = string

}
variable "gtw_descriptive_name_edge" {
  type = string

}

## SUBNETS
variable "azs" {
  type = list(string)

}
variable "mgt_subnet_suffix" {
  type = string

}
variable "mgt_subnets" {
  type = list(string)

}
variable "mgt_map_public_ip_on_launch" {
  type = bool

}
variable "pubclic_subnet_suffix" {
  type = string

}
variable "pubclic_subnets" {
  type = list(string)

}
variable "pubclic_map_public_ip_on_launch" {
  type = bool

}
variable "private_subnet_suffix" {
  type = string

}
variable "private_subnets" {
  type = list(string)

}
variable "private_map_public_ip_on_launch" {
  type = bool

}

## ROUTETABLES
variable "rt_descriptive_name_2a" {
  type = string

}
variable "rt_descriptive_name_2b" {
  type = string

}
variable "rt_descriptive_name_2c" {
  type = string

}
variable "rt_descriptive_name_edge" {
  type = string

}
variable "rt_descriptive_name_public" {
  type = string
}
variable "rt_descriptive_name_private_2a" {
  type = string

}
variable "rt_descriptive_name_private_2b" {
  type = string

}
variable "rt_descriptive_name_private_2c" {
  type = string

}

####### EC2
variable "key_name" {
  type = string

}
